class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def new
    @user = User.new
  end
  def show
    @users =User.all
  end
  def create
    @user = User.new
    user = User.create
    user.save
  end
  def params
    params.require(:user).permit(:first_name, :last_name, :email, :password_digest,)
  end
end
