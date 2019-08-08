class SessionsController < ApplicationController
  require 'bcrypt'

  def new
  end
  
  def create
    @user = User.find_by(email: params[:session][:email].downcase)
    if @user && @user.authenticate(params[:session][:password])
      if !@user.approved 
        flash[:alert] = 'Seu usuário ainda não foi aprovado pelo administrador'
      else
        sign_in 
        redirect_to @user
      end
    
    else
      flash[:alert] = 'E-mail ou senha incorretos !'
      render 'new'
      
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end
  
end
