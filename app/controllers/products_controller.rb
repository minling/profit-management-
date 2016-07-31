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



end
