class AddImageAndPdfLinkToCoupons < ActiveRecord::Migration
  def change
    add_column :coupons, :image_url, :string
    add_column :coupons, :pdf_url, :string
  end
end