class CreateBatches < ActiveRecord::Migration
  def change
    create_table :batches do |t|
      t.integer :user_id
      t.integer :material_id
      t.string :name
      t.string :color
      t.string :size
      t.integer :original_quantity
      t.integer :current_quantity
      t.decimal :total_cost
      t.datetime :purchase_date
      t.decimal :cost_per_piece
    end
  end
end
