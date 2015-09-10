class AddIsRedeemedToRedeemedCoupons < ActiveRecord::Migration
  def change
    add_column :redeemed_coupons, :is_redeemed, :bool, default: false 
  end
end