class CreateShipping < ActiveRecord::Migration
  def change
    create_table :shippings do |t|
      t.integer :order_id
      t.integer :tracking_number
      t.integer :business_id
    end
  end
end
