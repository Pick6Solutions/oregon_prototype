class AddUserNameToRedeemedCoupons < ActiveRecord::Migration
  def change
    add_column :redeemed_coupons, :user_name, :string
  end
end