class AnamnesesController < ApplicationController
    def new
        @anamnese = Anamnese.new
    end
    
    def create
        @anamnese = Anamnese.new(anamnese_params)
        @anamnese.user_id = current_user.id
        
        if @anamnese.save
          redirect_to '/users/' + @anamnese.user_id.to_s
        else
          render 'users_path'
        end
    end

    private
    def anamnese_params
        params.require(:anamnese).permit(:main_complaint, :history_complaint, :nature_complaint, :history_injuries, :is_accompanying, :athletes_id)
    end
end
