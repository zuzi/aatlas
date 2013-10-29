class SessionsController < ApplicationController
  def new
  end

  def create
    sign_in_user
  end

  def destroy
  	session[:user_id] = nil
	redirect_to root_path, notice: "Logged out"
  end
end
