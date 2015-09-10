class AddCouponNameToRedeemedCoupons < ActiveRecord::Migration
  def change
    add_column :redeemed_coupons, :coupon_name, :string
  end
end