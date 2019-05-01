class AppraisersController < ApplicationController
    
  def index
    @appraisers = Appraiser.all
  end
  
  def new
    @appraiser = Appraiser.new
  end
  
  def create
    @appraiser = Appraiser.new(appraiser_params)
    
    if @appraiser.save
      render 'index'
    else
      render 'new'
    end
  end
  
  def show
    @appraiser = Appraiser.find(params[:id])
  end

  private
  def appraiser_params
    params.require(:appraiser).permit(:name, :cpf, :date_birth, :gender, :profession,
     :address, :city, :neighborhood, :state, :cep, :home_phone, :cell_phone)
  end
    
end