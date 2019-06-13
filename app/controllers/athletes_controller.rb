class AthletesController < ApplicationController

  def index
    if params[:name]
        @athletes = Athlete.where('name LIKE ?', "%#{params[:name]}%")
    else
        @athletes = Athlete.all
    end
  end
  
  def edit
    @athlete = Athlete.find(params[:id])
  end
  
  def update
    @athlete = Athlete.find(params[:id])
    if @athlete.update_attributes(athlete_params)
      render 'show'
    else
      render 'edit'
    end
  end
  
  def new
    @athlete = Athlete.new
  end
  
  def create
    @athlete = Athlete.new(athlete_params)
    
    if @athlete.save
      redirect_to '/sign_in'
    else
      puts @athlete.errors.full_messages
      render :new
    end
  end
  
  def show
    @athlete = Athlete.find(params[:id])
    session[:athlete_id] = @athlete.id
    puts session[:athlete_id]
  end

  def destroy
    @athlete = Athlete.find(params[:id])
    @athlete.destroy
    redirect_to '/athletes'
  end

  private
  def athlete_params
    params.require(:athlete).permit(:name ,:cpf, :date_birth, :age, :gender,:civil_status,  
     :degree_education, :profession, :address, :city, :neighborhood, :state, :cep,  
     :home_phone, :cell_phone, :modality, :position, :dum , :dlm, :smoker , :alcoholism,  
     :sah, :diabetes, :cardio_deseases, :exercise_practice, :fami_alcoholism, :fami_sah,  
     :fami_diabetes, :fami_cardio, :others, :avatar)
  end
end
