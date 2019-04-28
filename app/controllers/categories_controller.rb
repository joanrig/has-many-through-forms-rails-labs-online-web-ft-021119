class CategoriesController < ApplicationController

  def show
    @category = Category.find(params[:id])
    @posts = @category.posts
  end

  def create
    #binding.pry
    @category = Category.create(category_params)
    @category.post= Post.find_by_id(category_params[:post_id])
    redirect_to @category.post
  end

  private
  def category_params
    params.require(:category).permit(:name, :post_id)
  end
end
