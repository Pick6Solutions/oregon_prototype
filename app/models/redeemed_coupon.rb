class RedeemedCoupon < ActiveRecord::Base
  before_save :save_coupon_name, :on => :create
  after_create :generate_unique_id
  belongs_to :coupon

  def self.redeemed_by_user(user_id, coupon_id)
    RedeemedCoupon.where(user_id: user_id, coupon_id: coupon_id)
  end

  def save_coupon_name
    coupon_id = self.coupon_id
    coupon = self.coupon
    self.coupon_name = coupon.name
  end

  def generate_unique_id
    timestamp = self.created_at
    number_redeemed = self.coupon.redeemed_coupons(user_id).count
    self.unique_id = "CID:#{coupon_id}|UN:#{user_name}|NR:#{number_redeemed}|TIME:#{timestamp}|#{SecureRandom.urlsafe_base64(10)}"
    self.save
  end

  def set_redeemed
    self.is_redeemed = true
    self.save
  end
end
