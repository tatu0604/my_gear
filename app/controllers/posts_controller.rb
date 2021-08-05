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
    @posts = Post.all
  end

  def help
    @posts = Post.all
  end

  def contact
    @posts = Post.all
  end

  def guitar
    @posts = Post.all
  end

  def bass
    @posts = Post.all
  end

  def amp
    @posts = Post.all
  end

  def effect
    @posts = Post.all
  end

  def drum
    @posts = Post.all
  end

  def keyboard
    @posts = Post.all
  end

  def pa
    @posts = Post.all
  end

  def accessory
    @posts = Post.all
  end

  def ukulele
    @posts = Post.all
  end

  def sax
    @posts = Post.all
  end

  def trumpet
    @posts = Post.all
  end

  def violin
    @posts = Post.all
  end

  def strings
    @posts = Post.all
  end

  def wind
    @posts = Post.all
  end

  def dtm
    @posts = Post.all
  end

  def others
    @posts = Post.all
  end


  private

  def post_params
    params.require(:post).permit(:title, :summary, :image, :category_id).merge(user_id: current_user.id)
  end

end