class BusinessesController < ApplicationController

before_action :authenticate_user!

  def index
    @businesses = Business.all
  end
  
  def edit
    @business = Business.find(params[:id])
  end

  def new
    @business = Business.new
  end

  def create
    @business = Business.new(name: params[:business][:name], url: params[:business][:url], user_id: current_user.id)
    @business.save 
    redirect_to businesses_path
  end

  def update
    @business = Business.find_by(id: params[:id])
    @business.update(business_params)
    redirect_to businesses_path
  end


  private
    def business_params
      params.require(:business).permit(:name, :url)
    end

end
