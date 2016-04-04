class CreateDiscounts < ActiveRecord::Migration
  def change
    create_table :discounts do |t|
      t.string :name
      t.string :code
      t.integer :percentage
      t.decimal :amount
      t.integer :vendor_id
    end
  end
end
