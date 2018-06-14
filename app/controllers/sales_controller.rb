class SalesController < ApplicationController
  def new
    @sale = Sale.new
  end

def create
  @sale = Sale.new(sale_params)
  @sale.save
  redirect_to sales_new_path
end

def show
  @sale = Sale.find(params[:id])
end
  private
  def sale_params
    params.require(:sale).permit( :detail, :category, :value, :discount, :tax, :id)
  end
end
