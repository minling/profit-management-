class Order < ActiveRecord::Base
  belongs_to :business  
  has_many :discounts
  belongs_to :shipping
  has_many :fees
  belongs_to :customer
  has_many :order_products
  has_many :products, through: :order_products
end
