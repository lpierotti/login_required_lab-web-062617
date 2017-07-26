class SecretsController < ApplicationController
	before_action :require_login

	def show
	end



	private 
	def logged_in?
		!!session[:name]
	end
	def require_login
		if !logged_in?
			redirect_to sessions_new_path
		end
	end
end