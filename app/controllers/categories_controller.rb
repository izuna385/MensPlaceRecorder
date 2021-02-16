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
  
  private
  
=begin
  def admin_user
    unless current_user.admin redirect_to root_url
  end
=end
end
