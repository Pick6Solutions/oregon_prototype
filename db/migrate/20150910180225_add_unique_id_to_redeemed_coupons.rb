class AddUniqueIdToRedeemedCoupons < ActiveRecord::Migration
  def change
    add_column :redeemed_coupons, :unique_id, :string
  end
end