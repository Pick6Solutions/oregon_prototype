class AddUrlToRedeemedCoupons < ActiveRecord::Migration
  def change
    add_column :redeemed_coupons, :redeemable_pdf_url, :string
  end
end