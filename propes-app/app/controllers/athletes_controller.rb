class AthletesController < ApplicationController
  
  def index
    @athletes = Athlete.all
  end
  
  def new
    @athlete = Athlete.new
    @user = User.new
  end
  
  def create
    @athlete = Athlete.new(athlete_params)
    @user = User.new(user_params)
    
    if @athlete.save and @user.save
      redirect_to @user
      sign_in 
    else
      render 'new'
    end
    
  end
  
  def show
    @athlete = Athlete.find(params[:id])
  end

  private
  def athlete_params
    params.require(:athlete).permit(:name, :email, :password, :cpf, :date_birth,  
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
  
  def user_params
    params.require(:athlete).permit(:name, :email, :password, :password_confirmation, :avatar)
  end
  
end
