class AppraisersController < ApplicationController
    
  def index
    @appraisers = Appraiser.all
  end
  
  def new
    @appraiser = Appraiser.new
  end
  
  def create
    @appraiser = Athlete.new(appraiser_params)
    @user = User.new(user_params)
    
    if @appraiser.save
      redirect_to @user
      sign_in 
    else
      render 'new'
    end
  end
  
  def show
    @appraiser = Appraiser.find(params[:id])
  end

  private
  def appraiser_params
    params.require(:appraiser).permit(:name, :email, :password, :password_confirmation, :cpf, :date_birth, :gender, :profession,
     :address, :city, :neighborhood, :state, :cep, :home_phone, :cell_phone)
  end
  
  def user_params
    params.require(:user).permit(:name, :email, :new_password, :password, :password_confirmation, :avatar)
  end
    
end