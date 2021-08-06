class PostsController < ApplicationController
  def index
    @posts = Post.all
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
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to post_path(@post.id)
  end

  def search
  end

  def help
    @posts = Post.all
  end

  def contact
    @posts = Post.all
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

end