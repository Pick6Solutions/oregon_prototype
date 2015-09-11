class RemoveHtmlFileFromRedeemedCoupons < ActiveRecord::Migration
  def change
    remove_column :redeemed_coupons, :html_file
  end
end