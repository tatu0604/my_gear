class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @nickname = @user.nickname
    @profile = @user.profile
    @posts = @user.posts
  end
end
