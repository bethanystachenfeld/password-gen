class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.authenticate(params[:email], params[:password])
  	if user
  		session[:user_id] = user.user_id
  		redirect_to root_url, :notice => "Logged in!"
  	else
  		render "new"
  	end
end
