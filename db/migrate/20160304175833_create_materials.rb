class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :name
      t.integer :total_quantity
      t.string :color
      t.string :size
      t.integer :current_batch
    end
  end
end
