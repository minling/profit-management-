class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.integer :product_id
      t.integer :quantity
      t.decimal :cost_price
      t.datetime :purchase_date
      t.decimal :piece_price
      t.string :color
    end
  end
end
