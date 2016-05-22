class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.integer :business_id
      t.string :email
    end
  end
end
