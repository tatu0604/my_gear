class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :show, :edit, :update, :destroy]
  before_action :set_posts, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.includes(:user).order('created_at DESC')
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @comment = Comment.new
    @comments = Comment.includes(:post).order('created_at DESC')
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to root_path
  end

  def search
    @posts = Post.search(params[:keyword])
  end

  def help
  end

  def contact
  end

  def guitar
    @posts = Post.where(category_id: 2)
  end

  def bass
    @posts = Post.where(category_id: 3)
  end

  def amp
    @posts = Post.where(category_id: 4)
  end

  def effect
    @posts = Post.where(category_id: 5)
  end

  def drum
    @posts = Post.where(category_id: 6)
  end

  def keyboard
    @posts = Post.where(category_id: 7)
  end

  def pa
    @posts = Post.where(category_id: 8)
  end

  def accessory
    @posts = Post.where(category_id: 9)
  end

  def ukulele
    @posts = Post.where(category_id: 10)
  end

  def sax
    @posts = Post.where(category_id: 11)
  end

  def trumpet
    @posts = Post.where(category_id: 12)
  end

  def violin
    @posts = Post.where(category_id: 13)
  end

  def strings
    @posts = Post.where(category_id: 14)
  end

  def wind
    @posts = Post.where(category_id: 15)
  end

  def dtm
    @posts = Post.where(category_id: 16)
  end

  def others
    @posts = Post.where(category_id: 17)
  end

  private

  def post_params
    params.require(:post).permit(:title, :summary, :image, :category_id).merge(user_id: current_user.id)
  end

  def set_posts
    @post = Post.find(params[:id])
  end
end
