class CreateFees < ActiveRecord::Migration
  def change
    create_table :fees do |t|
      t.string :name
      t.decimal :percentage
      t.integer :vendor_id
    end
  end
end
