class RemovePdfFileFromRedeemedCoupons < ActiveRecord::Migration
  def change
    remove_column :redeemed_coupons, :pdf_file
  end
end