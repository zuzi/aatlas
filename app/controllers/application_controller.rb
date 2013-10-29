class ApplicationController < ActionController::Base
  include SessionsHelper
  protect_from_forgery

  protected
    def signed_in_user
      unless User.find_by_id(session[:user_id])
        redirect_to login_url, notice: "Please log in"
      end
    end
end