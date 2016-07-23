class BatchesController < ApplicationController

before_action :authenticate_user!

  def index
    @batches = Batch.all
  end

  def new
    @material = Material.find(params[:material_id])
    @batch = Batch.new
  end

  def create
    @batch = Batch.new(batch_params)
    @batch.current_quantity = @batch.original_quantity
    @batch.save
    redirect_to material_batches_path
  end

  def show
    @batch = batch.find(params[:id])
  end



private
  def batch_params
    params.require(:batch).permit(:user_id, :material_id, :name, :color, :size, :original_quantity, :total_cost, :purchase_date, :cost_per_piece)
  end

end
