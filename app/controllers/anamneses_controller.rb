class AnamnesesController < ApplicationController
    def new
        @anamnese = Anamnese.new
    end
    
    def create
        @anamnese = Anamnese.new(anamnese_params)
        
        @anamnese.user_id = current_user.id
        @anamnese.athletes_id = session[:athlete_id]
        
        if @anamnese.save
          redirect_to '/athletes'
        else
          render 'new'
        end
    end

    def edit
        @anamnese = Anamnese.find(params[:id])
    end
  
    def update
        @anamnese = Anamnese.find(params[:id])
        
        if @anamnese.update_attributes(anamnese_params)
            redirect_to '/athletes'
        else
            render 'edit'
        end
    end



    private
    def anamnese_params
        params.require(:anamnese).permit(:main_complaint, :history_complaint, :nature_complaint, :history_injuries, :is_accompanying)
    end
end
