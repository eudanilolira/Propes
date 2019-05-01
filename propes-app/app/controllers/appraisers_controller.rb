class AppraisersController < ApplicationController
    
  def index
    @appraisers = Appraisers.all
  end
  
  def new
    @appraiser = Appraisers.new
  end
  
  def create
    @appraiser = Appraisers.new(appraiser_params)
  end
  
  def show
    @appraiser = Appraisers.find(params[:id])
  end

  private
  def appraiser_params
    params.require(:appraiser).permit(:name, :email, :password, :password_confirmation, :cpf, :date_birth, :gender, :profession,
     :address, :city, :neighborhood, :state, :cep, :home_phone, :cell_phone)
  end
    
end