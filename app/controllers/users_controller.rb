class UsersController < ApplicationController

  def index
    @users = User.all
    authorize! :index, @users
  end

  def new
    @user = User.new
  end
  
  def edit
    @user = User.find(params[:id])
    authorize! :edit, @user
  end

  def update
    @user = User.find(params[:id])
    authorize! :update, @user
    if @user.update_attributes(user_params)
      render 'show'
    else
      render 'edit'
    end
  end
  
  def create
    @user = User.new(user_params)
    
    if @user.save 
      @user.update_column(:approved, false) 
      redirect_to '/sign_in'
    else
      puts @user.errors.full_messages
      render 'new'
    end
  end
  
  def show
    @user = User.find(params[:id])
    authorize! :show, @user
  end

  def destroy
    @user = User.find(params[:id])
    authorize! :destroy, @user
    @user.destroy
    redirect_to '/users'
  end

  def unapproveds
    @users = User.where(approved: false)
    authorize! :unapproveds, @users
  end

  def approve
    @user = User.find(params[:id])
    authorize! :approve, @user

    if @user.update_column(:approved, true)
      flash[:notice] = "Usuário aprovado com sucesso !"
    else
      flash[:alert] = "Ocorreu algum erro, tente novamente mais tarde !"
    end
    
    redirect_to '/users/unapproveds'
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :avatar, :cpf, :date_birth, :gender, :profession,
     :address, :city, :neighborhood, :state, :cep, :home_phone, :cell_phone)
  end

end
