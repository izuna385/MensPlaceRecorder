class ApplicationController < ActionController::Base

  include SessionsHelper    
  include CategoriesHelper
  
  private

  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end

  def counts(user)
    @count_posts = user.posts.count
    @count_likes = user.liked_posts.count
  end
  
# for 404
 
  unless Rails.env.development?
    rescue_from Exception,                      with: :render_500
    rescue_from ActiveRecord::RecordNotFound,   with: :render_404
    rescue_from ActionController::RoutingError, with: :render_404
  end
 
  def routing_error
    raise ActionController::RoutingError, params[:path]
  end
 
  private
 
  def render_404
    render 'errors/404', status: :not_found
  end
 
  def render_500
    render 'errors/500', status: :internal_server_error
  end
# for 404 end


end