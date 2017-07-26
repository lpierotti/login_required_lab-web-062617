class SessionsController < ApplicationController
  
  def new
  end

  def create
  	session[:name] = params[:name]
  	if session[:name].present?
  		redirect_to index_path
  	else
  		redirect_to sessions_new_path
  	end
  end

  def show

  end

  def index
  end

  def destroy
  	session.clear
  	redirect_to sessions_new_path
  end

end
