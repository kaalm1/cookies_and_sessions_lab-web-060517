class ProductsController < ApplicationController
  def index
    @cart = session[:cart_id]
  end

  def add
    cart << params[:product]
    redirect_to products_path
  end

end
