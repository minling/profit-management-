class CreateVariants < ActiveRecord::Migration
  def change
    create_table :variants do |t|
      t.integer :product_id
      t.integer :material_id
      t.string :color
      t.string :size
    end
  end
end
