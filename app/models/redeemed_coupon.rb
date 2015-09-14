class RedeemedCoupon < ActiveRecord::Base
  before_save :save_coupon_name, :on => :create
  before_save :save_coupon_image, :on => :create
  after_create :generate_unique_id
  after_create :get_coupon_pdf
  belongs_to :coupon

  def self.redeemed_by_user(user_id, coupon_id)
    RedeemedCoupon.where(user_id: user_id, coupon_id: coupon_id)
  end

  def save_coupon_name
    coupon = self.coupon
    self.coupon_name = coupon.name
  end

  def generate_unique_id
    timestamp = self.created_at
    number_redeemed = self.coupon.redeemed_coupons(user_id).count
    self.unique_id = "CID:#{coupon_id} | UN:#{user_name} | NR:#{number_redeemed} | TIME:#{timestamp} | #{SecureRandom.urlsafe_base64(10)}"
    self.save
  end

  def save_coupon_image
    coupon = self.coupon
    self.coupon_name = URI.escape(coupon.image_url)
  end

  def set_redeemed
    self.is_redeemed = true
    self.save
  end

  def get_coupon_pdf
    filename = './tmp/temp.pdf'
    http_conn = Faraday.new do |builder|
      builder.adapter Faraday.default_adapter
    end 
    response = http_conn.get self.coupon.pdf_url
    File.open(filename, "wb") do |file|
      file.write response.body
    end
    convert_pdf_to_img
  end

  def convert_pdf_to_img
    filename_pdf = './tmp/temp.pdf'
    filename_png = './tmp/temp.png'
    pdf = Grim.reap(filename_pdf)
    png = pdf[0].save(filename_png)

    convert_img_to_html
  end

  def convert_img_to_html
    filename_html = './tmp/temp.html'
    fileHtml = File.new(filename_html, "w+")
    fileHtml.puts "<html><body><div style='width: 1100px; height: 1300px;'><img width='100%' height='85%' src='temp.png'></div></body>"
    fileHtml.puts "<footer style='font-weight: bold; font-size: 30px; width: 100%'>#{unique_id}</footer></html>"
    fileHtml.close()

    convert_html_to_pdf
  end

  def convert_html_to_pdf
    filename_pdf = './tmp/' + URI.escape(unique_id) + '.pdf'
    filename_html = './tmp/temp.html'
    kit = PDFKit.new(File.new(filename_html), :page_size => 'Letter')
    pdf = kit.to_pdf
    file = kit.to_file(filename_pdf)

    upload_pdf
  end

  def upload_pdf
    s3 = Aws::S3::Resource.new
    filename_pdf = './tmp/' + URI.escape(unique_id) + '.pdf'
    obj = s3.bucket('storm-coupon-pdfs').object(URI.escape(unique_id) + '.pdf')
    if obj.upload_file(filename_pdf)
      self.redeemable_pdf_url = obj.public_url
      self.save
      FileUtils.rm_rf(Dir.glob('./tmp/*'))
    end
  end

end
