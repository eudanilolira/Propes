class QuestionaryController < ApplicationController
    def new
        @questionary = Questionary.new
    end
    
    def create
        @questionary = Questionary.new(questionary_params)
        
        @questionary.user_id = current_user.id
        @questionary.athlete_id = session[:athlete_id]
        
        if @questionary.save
          redirect_to '/athletes/' + @questionary.athlete_id.to_s
        else
          render 'new'
        end
    end

    def edit
        @questionary = Questionary.find(params[:id])
    end
  
    def update
        @questionary = Questionary.find(params[:id])
        
        if @questionary.update_attributes(questionary_params)
            redirect_to '/athletes/' + @questionary.athlete_id.to_s
        else
            render 'edit'
        end
    end

  def destroy
    @questionary = Questionary.find(params[:id])
    @questionary.destroy
    redirect_to '/athletes/' + @questionary.athlete_id.to_s
  end


    private
    def questionary_params
        params.require(:questionary).permit( :question1a, :question1b, :question2a, :question2b, :question3a, :question3b, :question4a, :question4b)
    end
end
