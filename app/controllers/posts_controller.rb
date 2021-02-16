class PostsController < ApplicationController
  before_action :require_user_logged_in, only: [:new, :create, :destroy, :edit]
  before_action :correct_user, only: [:destroy]
  
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
    @category_options = Category.all.map{|category| [category.name, category.id]}
  end
  
  def edit
    # TODO: editアクションの追加
  end

  def create
    @post = current_user.posts.build(post_params)

    if @post.save
      flash[:success] = '場所の記録を投稿しました。'
      redirect_to root_url
    else
      @posts = current_user.posts.order(id: :desc).page(params[:page])
      flash.now[:danger] = '場所の記録の投稿に失敗しました。'
      render 'toppages/index'
    end
  end

  def destroy
    @post.destroy
    flash[:success] = '場所の記録を削除しました。'
    redirect_back(fallback_location: root_path)
  end
  
  private

  def post_params
    params.require(:post).permit(:description, :category_id)
  end

  def correct_user
    @post = current_user.posts.find_by(id: params[:id])
    unless @post
      redirect_to root_url
    end
  end
end
