class Shipping < ActiveRecord::Base
  belongs_to :order
  belongs_to :customer
  belongs_to :vendor
end
