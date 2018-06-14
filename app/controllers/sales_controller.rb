class SalesController < ApplicationController
  def new
    @sale = Sale.new
  end

def create
  @sale = Sale.new(sale_params)
  @sale.total = @sale.value - @sale.discount
  if @sale.tax == 0
    @sale.total *= 1.19
    @sale.tax = 19
  else
    @sale.tax = 0

  end

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
