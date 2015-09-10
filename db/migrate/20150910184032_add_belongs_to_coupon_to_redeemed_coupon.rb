class AddBelongsToCouponToRedeemedCoupon < ActiveRecord::Migration
  def change
    remove_column :redeemed_coupons, :coupon_id
    add_reference :redeemed_coupons, :coupon, index: true, foreign_key: true
  end
end