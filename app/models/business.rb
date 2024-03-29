class Business < ActiveRecord::Base
  belongs_to :user
  has_many :customers
  has_many :fees
  has_many :discounts
  has_many :expenses
  has_many :orders
  has_many :shippings
  has_many :products, through: :user
end
