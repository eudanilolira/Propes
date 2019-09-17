class SessionsController < ApplicationController
  require 'bcrypt'
  
  def new
  end
  
  def create
    @user = User.find_by(email: params[:session][:email].downcase)
    if @user && @user.authenticate(params[:session][:password]) && @user.approved
        sign_in 
        redirect_to @user
    else
      if @user.approved != true
        flash[:alert] = 'Aguarde aprovação do administrador'
      end
      
      if @user.authenticate(params[:session][:password])
        flash[:alert] = 'E-mail ou senha incorretos !'
      end

      render 'new'

    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end
  
end
