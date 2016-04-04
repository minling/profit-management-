class CreateCurrentBatch < ActiveRecord::Migration
  def change
    create_table :current_batches do |t|
      t.integer :item_id
      t.integer :quantity
      t.integer :material_id
    end
  end
end
