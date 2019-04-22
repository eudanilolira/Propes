class SessionsController < ApplicationController
  
  def new
  end
  
  def create
    @user = User.find_by(email: params[:session][:email].downcase)
    if @user && @user.authenticate(params[:session][:password])
      sign_in 
      redirect_to @user
    
    else
      #render html: "<script>alert('Usuário ou senha incorreto(s)')</script>".html_safe  <-- code to alert the user that he can't login
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
