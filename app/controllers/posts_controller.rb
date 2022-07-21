class PostsController < ApplicationController
  before_action :authenticate_user!, except: :home
  before_action :set_post, only: :show
  before_action :set_own_post, only: [:edit, :update, :destroy]
  before_action :validate_inspecting, only: [:edit, :update]
  def index
    @posts = Post.includes(:user)
  end

  def home
    @posts = Post.includes(:user)
  end
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @post.update(post_params)
      redirect_to posts_path
    else
      render :edit
    end
  end

  def show; end

  def destroy
    if @post.comments.size == 0
      @post.destroy
      redirect_to posts_path
    end
  end

  private

  def set_own_post
    @post = current_user.posts.find_by_id(params[:id])
    if @post.nil?
      flash[:alert] = 'this post not belongs to you or not exists'
      redirect_to posts_path
    end
  end

  def post_params
    params.require(:post).permit(:title, :content, :address, :disaster_id)

  end

  def set_post
    @post = Post.find(params[:id])
  end
end
