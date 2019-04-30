class UsersController < ApplicationController
  
  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params.permit(:name, :email))
      render 'index'
    else
      render 'index'
    end
  end
  
  def create
      @user = User.new(user_params)

    if @user.save
      redirect_to @user
      sign_in 
    else
      render 'new'
    end
  end
  
  def show
    @user = User.find(params[:id])
  end

  def destroy
    # Forbid that users exclude their own account
    @user = User.find(params[:id])
    @user.destroy
    redirect_to '/users'
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
  
end
