class ProductsController < ApplicationController
  def all
    @inventory = Product.all
    render "all.html.erb"
  end
end
