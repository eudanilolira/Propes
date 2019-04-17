class SessionsController < ApplicationController
  def new
  end
  
  def create
    @user = params[:session].permit(email, password)
    @user.save
    redirect_to @user
  end
  
  def show
    
  end
  
  def destroy
  end
  
end
