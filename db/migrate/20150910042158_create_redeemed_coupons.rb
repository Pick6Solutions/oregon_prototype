class CreateRedeemedCoupons < ActiveRecord::Migration
  def change
    create_table :redeemed_coupons do |t|
      t.string :user_id
      t.integer :coupon_id

      t.timestamps
    end
  end
end