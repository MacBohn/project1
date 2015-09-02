class RegistrationsController < ApplicationController


  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: "User was successfully created"
    else
      redirect_to sign_up_path, notice: "All fields are required with correct information"
    end
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password_digest)
  end


end
