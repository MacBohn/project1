class AuthenticationsController < ApplicationController

def create
  user = User.find_by_email(params[:email])
  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect_to rants,./_path
  else
    redirect_to root_path
  end
end

def destroy
  session.delete(:user_id)
  redirect_to root_path, notice: "User successfully signed out"
end

end
