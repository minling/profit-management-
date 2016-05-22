class Customer < ActiveRecord::Base
  belongs_to :business
  has_many :orders
  has_many :shippings, through: :orders
end
