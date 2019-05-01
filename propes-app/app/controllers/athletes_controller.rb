class AthletesController < ApplicationController
  
  def index
    @athletes = Athlete.all
  end
  
  def new
    @athlete = Athlete.new
  end
  
  def create
    @athlete = Athlete.new(athlete_params)
  end
  
  def show
    @athlete = Athlete.find(params[:id])
  end

  private
  def athlete_params
    params.require(:athlete).permit(:name, :email, :password, :password_confirmation, :cpf, :date_brth,  
     :age,  
     :gender,  
     :civil_status,  
     :degree_education,  
     :profession,  
     :address,  
     :city,  
     :neighborhood,  
     :state,  
     :cep,  
     :home_phone, 
     :cell_phone,
     :modality,  
     :position,  
     :dum ,  
     :dlm,  
     :smoker ,  
     :alcoholism,  
     :sah,  
     :diabetes,  
     :cardio_deseases,  
     :exercise_practice,  
     :fami_alcoholism,  
     :fami_sah,  
     :fami_diabetes,  
     :fami_cardio,  
     :others)
  end
end
