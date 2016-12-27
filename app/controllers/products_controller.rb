class ProductsController < ApplicationController

before_action :authenticate_user!

  def index
  
  end

  def new 
    @product = Product.new
    @materials = Material.order(:name)
  end

  def create
    
  end

private

  # def product_params
  #   params.require(:product).permit(:user_id, :name, :price, :materials_attributes => [:id], :material_ids =>[])
  # end


end
