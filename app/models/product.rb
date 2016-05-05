class Product < ActiveRecord::Base
  belongs_to :user
  has_many :current_batches
  has_many :materials, through: :current_batches
  has_many :order_products
  has_many :orders, through: :order_products
end


