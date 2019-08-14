class UsersController < ApplicationController

  def index
    authorize! :index, @users
    @users = User.all
  end

  def unapproveds
    authorize! :unapproveds, @users
    @users = User.where(approved: false)
  end

  def new
    @user = User.new
  end
  
  def edit
    @user = User.find(params[:id])
  end

  def update
    if current_user.id == params[:id]
      @user = User.find(params[:id])
      if @user.update_attributes(user_params)
        render 'show'
      else
        render 'edit'
      end
    else
      authorize! :update, @users
    end
  end
  
  def create
    @user = User.new(user_params)
    if @user.save  
      redirect_to 'sign_in'
    else
      render 'new'
    end
  end
  
  def show
    @user = User.find(params[:id])
  end

  def destroy
    authorize! :update, @users
    @user = User.find(params[:id])
    @user.destroy
    redirect_to request.original_url
  end

  def approve
    authorize! :update, @users
    @user = User.find(params[:id])
    if @user.update_attribute(:approved, false)
      flash[:notice] = "Usuário aprovado com sucesso !"
    else
      flash[:alert] = "Ocorreu algum erro, tente novamente mais tarde !"
    end
    render 'unapproveds'
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :avatar, :cpf, :date_birth, :gender, :profession,
     :address, :city, :neighborhood, :state, :cep, :home_phone, :cell_phone)
  end

end
