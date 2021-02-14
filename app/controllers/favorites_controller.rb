class FavoritesController < ApplicationController
  before_action :require_user_logged_in

  def create
    user = User.find(params[:user_id])
    post = Post.find(params[:post_id])
    current_user.like(post)
    flash[:success] = 'この場所をいいねしました。'
    redirect_to user
  end

  def destroy
    user = User.find(params[:user_id])
    post = Post.find(params[:post_id])
    current_user.unlike(post)
    flash[:success] = 'この場所のいいねを解除しました。'
    redirect_to user
  end

end
