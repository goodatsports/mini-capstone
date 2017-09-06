class ProductsController < ApplicationController

  def index
    @inventory = Product.all
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end 

  def create
    @new_item = Product.new({
      name: params[:name],
      price: params[:price],
      image: params[:image],
      description: params[:description]
      })
    @new_item.save
    redirect_to "/products"
  end

  def show
    @product = Product.find_by(id: params[:id])
    render "show.html.erb"
  end

  def edit
    @product = Product.find_by(id: params[:id])
    render "edit.html.erb"
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.update({
      name: params[:name],
      price: params[:price],
      image: params[:image],
      description: params[:description]
      })
    #render "/products/#{@product.id}"
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render "destroy.html.erb"
  end
end
