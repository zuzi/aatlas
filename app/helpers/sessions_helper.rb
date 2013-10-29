module SessionsHelper

    def signed_in?
      !session[:user_id].nil?
    end

	def sign_in_user
	  	user = User.find_by_name(params[:name])
		if user and user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to root_path , notice: "Logged in"
		else
			redirect_to login_url, alert: "Invalid user/password combination"
		end
	end

end
