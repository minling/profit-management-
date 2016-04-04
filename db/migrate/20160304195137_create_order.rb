class CreateOrder < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :vendor_id
      t.decimal :subtotal
      t.integer :discount_id
      t.decimal :total
      t.decimal :shipping_cost
      t.decimal :profit
      t.date :order_date
      t.integer :customer_id
      t.integer :fee_id
    end
  end
end
