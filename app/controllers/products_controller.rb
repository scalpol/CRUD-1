class ProductsController < ApplicationController

  def create
    category = Category.find(params[:category_id])
    category.products.build(product_params)
    if category.save
      redirect_to category_path(category)
    end
  end

  def destroy
    @product = Product.find(params[:id])
    if @product.delete
      redirect_to root_path
    end
  end

  private
  def product_params
    params.require(:product).permit(:name, :price)
  end
end
