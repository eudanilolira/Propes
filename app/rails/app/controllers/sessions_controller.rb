class SessionsController < ApplicationController
  def new
  end
  
  def create
    @user = User.find_by(email: params[:session][:email].downcase)
    if @user && user.authenticate(params[:session][:password])
      sign_in @user
    end
    
  end
  
  def show
    
  end
  
  def destroy
  end
  
end
