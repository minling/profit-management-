class Batch < ActiveRecord::Base
  belongs_to :user
  belongs_to :material
end
