class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
      if @user.save
        redirect_to @user, notice: "Usuário foi criado com sucesso!"
      else 
        render action: :new
    end
  end
  
  def show
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
