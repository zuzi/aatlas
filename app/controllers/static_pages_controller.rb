class StaticPagesController < ApplicationController

	def index
	end

	def login
		sign_in_user
	end

end
