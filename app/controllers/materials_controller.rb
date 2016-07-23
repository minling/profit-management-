class MaterialsController < ApplicationController

before_action :authenticate_user!

  def index
    @materials = Material.all
  end

  def new
    @material = Material.new
  end

  def create
    Material.create(material_params)
    redirect_to materials_path
  end


private
  def material_params
    # params.require(:material).permit(:name, :total_quantity, :color, :size, :batches_attributes =>[:name][:color][:size][:original_quantity][:total_cost][:purchase_date][:cost_per_piece])
     params.require(:material).permit(:name, :color, :size)
  end

end
