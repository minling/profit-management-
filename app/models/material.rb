class Material < ActiveRecord::Base
  belongs_to :user
  has_many :variants
  has_many :products, through: :variants
  has_many :batches
end
