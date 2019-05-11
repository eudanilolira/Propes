class SessionsController < ApplicationController
  
  def new
  end
  
  def create
    @user = User.find_by(email: params[:session][:email].downcase)
    if @user && @user.authenticate(params[:session][:password])
      sign_in 
      redirect_to @user
    
    else
      flash[:alert] = 'E-mail ou senha incorretos !'
      render 'new'
      
    end
  end
  
  def show
  end
  
  def destroy
    sign_out
    redirect_to root_url
  end
  
end
