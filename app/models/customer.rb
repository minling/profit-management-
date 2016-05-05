class Customer < ActiveRecord::Base
  belongs_to :vendor
  has_many :orders
  has_many :shippings, through: :orders
end
