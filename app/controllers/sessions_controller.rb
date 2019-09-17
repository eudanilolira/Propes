class SessionsController < ApplicationController
  require 'bcrypt'
  
  def new
  end
  
  def create
    @user = User.find_by(email: params[:session][:email].downcase)
    if @user.nil? || @user.authenticate(params[:session][:password]) == false
      flash[:alert] = "Usuário ou senha incorretos"
    else
      if @user.approved != true
        flash[:alert] = "Aguarde aprovação do administrador"
      else
        sign_in 
        redirect_to @user        
      end
    end
      render 'new'
  end

  def destroy
    sign_out
    redirect_to root_url
  end
  
end
