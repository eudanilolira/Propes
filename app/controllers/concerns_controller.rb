class ConcernsController < ApplicationController
    def new
        @concerns = Concerns.new
    end
    
    def create
        @concerns = Concerns.new(concerns_params)
        
        @concerns.user_id = current_user.id
        @concerns.athlete_id = session[:athlete_id]
        
        if @concerns.save
          redirect_to '/athletes/' + @concerns.athlete_id.to_s
        else
          render 'new'
        end
    end

    def edit
        @concerns = Concerns.find(params[:id])
    end
  
    def update
        @concerns = Concerns.find(params[:id])
        
        if @concerns.update_attributes(concerns_params)
            redirect_to '/athletes/' + @concerns.athlete_id.to_s
        else
            render 'edit'
        end
    end

  def destroy
    @concerns = Concerns.find(params[:id])
    @concerns.destroy
    redirect_to '/athletes/' + @concerns.athlete_id.to_s
  end


    private
    def concerns_params
        params.require(:concerns).permit()
    end
end
