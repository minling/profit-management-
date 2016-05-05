class CurrentBatch < ActiveRecord::Base
  belongs_to :product
  belongs_to :material
end
