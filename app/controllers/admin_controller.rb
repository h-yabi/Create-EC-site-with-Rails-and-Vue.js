class AdminController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    Product.create(product_params)
    # binding.pry
  end

  private
    def product_params
      params.require(:product).permit(:name, :image, :price)
    end

end
