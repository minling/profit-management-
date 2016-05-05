class CreateOrdersProducts < ActiveRecord::Migration
  def change
    create_table :order_products do |t|
      t.integer :order_id
      t.integer :item_id
      t.integer :quantity
    end
  end
end
