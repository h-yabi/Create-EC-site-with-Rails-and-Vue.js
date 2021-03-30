class AdminController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    Product.create(product_params)
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    # binding.pry
    product = Product.find(params[:id])
    product.update(product_params)

    redirect_to('/admin')
  end

  private
    def product_params
      params.require(:product).permit(:name, :image, :price)
    end

end
