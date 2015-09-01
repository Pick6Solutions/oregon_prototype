class CreateCoupons < ActiveRecord::Migration
  def change
    create_table :coupons do |t|
      t.string :name
      t.integer :points
      t.integer :number_available

      t.timestamps
    end
  end
end