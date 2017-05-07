class ProductsController < ApplicationController
	add_breadcrumb 'Home', :root_path
	add_breadcrumb "collection", :products_path

  def index
  	@products = Product.page(params[:page]).per(50).order("created_at desc")
  end

  def show
  	@product = Product.find(params[:id]) 
  	add_breadcrumb @product.name, product_path	
  end

end
