class SessionsController < ApplicationController
  def new
  end

  def create
    user = Usuario.find_by_email(params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to user, notice: 'You are logged in, modafoca!'
    else
      flash[:danger] = 'Invalid email or password'
      redirect_to user
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: 'Logged out!'
  end
end
