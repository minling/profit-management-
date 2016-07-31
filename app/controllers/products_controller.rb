class ProductsController < ApplicationController

before_action :authenticate_user!

  def index
  
  end

  def new 
    @product = Product.new
    # @materials = Material.all.by_name
  end


end
