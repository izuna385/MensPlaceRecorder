class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id]) #/categories/1
    @posts = @category.posts
  end

  def new
  end

  def create
  end

  def edit
  end

  def destroy
  end
end
