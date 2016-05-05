class Material < ActiveRecord::Base
  has_many :current_batches
  has_many :products, through: :current_batches
end
