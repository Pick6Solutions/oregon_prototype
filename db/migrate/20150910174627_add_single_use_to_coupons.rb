class AddSingleUseToCoupons < ActiveRecord::Migration
  def change
    add_column :coupons, :single_use, :bool
  end
end