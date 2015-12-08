class SessionsController < ApplicationController
  def new
  end

  def create
    user = Usuario.find_by_email(params[:session][:email])
    unless user
      flash[:danger] = 'Usuário inválido &#9855;'
      render 'new'
    else
      unless user.authenticate(params[:session][:password])
        flash[:danger] = 'Senha inválida ♿'
        render 'new'
      else
        session[:user_id] = user.id
        flash[:success] = 'You are logged in, modafoca!'
        redirect_to user
      end
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: 'Logged out!'
  end
end
