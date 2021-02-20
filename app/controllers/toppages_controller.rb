class ToppagesController < ApplicationController
  def index
    if logged_in?
      @post = current_user.posts.build  # form_with 用
      @posts = Post.order(id: :desc).page(params[:page]) # current_user.posts.order(id: :desc).page(params[:page])
    else
      @posts = Post.order(id: :desc).page(params[:page])
    end
  end
end