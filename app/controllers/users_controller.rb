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
    if @user.update_attributes(user_params)
      render 'show'
    else
      render 'edit'
    end
  end
  
  def create
    @user = User.new(user_params)
    if @user.save  
      RegisterMailer.register_mail().deliver_now
      redirect_to 'sign_in'
    else
      render 'new'
    end
    
  end
  
  def register
    @user = User.find(params[:id])

    if params[:approved]
      @user.write_attribute(:approved, true)
    else
      @user.destroy
    end

  end 

  def show
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to '/users'
  end


  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :avatar, :cpf, :date_birth, :gender, :profession,
     :address, :city, :neighborhood, :state, :cep, :home_phone, :cell_phone)
  end

end
