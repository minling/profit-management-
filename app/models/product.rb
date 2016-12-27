class Product < ActiveRecord::Base
  belongs_to :user
  has_many :variants
  has_many :materials, through: :variants
  has_many :order_products
  has_many :orders, through: :order_products

  accepts_nested_attributes_for :materials
end


