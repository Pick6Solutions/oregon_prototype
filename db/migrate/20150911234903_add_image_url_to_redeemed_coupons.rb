class AddImageUrlToRedeemedCoupons < ActiveRecord::Migration
  def change
    add_column :redeemed_coupons, :image_url, :string
  end
end