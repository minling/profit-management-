class Material < ActiveRecord::Base
  belongs_to :user
  has_many :current_batches
  has_many :products, through: :current_batches
end
