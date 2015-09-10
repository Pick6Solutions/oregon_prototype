class ChangeSingleUseInCouponsToIncludeDefault < ActiveRecord::Migration
  def change
    change_column :coupons, :single_use, :bool, default: false
  end
end