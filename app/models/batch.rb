class Batch < ActiveRecord::Base
  belongs_to :user
  belongs_to :material

  def self.initial_batch_add_to_material(batch)
    if batch.material.current_batch == nil 
      Material.find(batch.material.id).update(current_batch: batch.id)
    end
  end

end
