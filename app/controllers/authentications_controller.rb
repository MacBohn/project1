class AuthenticationsController < ApplicationController



def destroy
  session.delete(:user_id)
  redirect_to root_path, notice: "User successfully signed out"
end

end
