class AnkleMobilityController < ApplicationController
    def new
        @ankle_mobility = Ankle_mobility.new
    end
    
    def create
        @ankle_mobility = Ankle_mobility.new(ankle_mobility_params)
        
        @ankle_mobility.user_id = current_user.id
        @ankle_mobility.athlete_id = session[:athlete_id]
        
        if @ankle_mobility.save
          redirect_to '/athletes/' + @ankle_mobility.athlete_id.to_s
        else
          render 'new'
        end
    end

    def edit
        @ankle_mobility = Ankle_mobility.find(params[:id])
    end
  
    def update
        @ankle_mobility = Ankle_mobility.find(params[:id])
        
        if @ankle_mobility.update_attributes(ankle_mobility_params)
            redirect_to '/athletes/' + @ankle_mobility.athlete_id.to_s
        else
            render 'edit'
        end
    end

  def destroy
    @ankle_mobility = Ankle_mobility.find(params[:id])
    @ankle_mobility.destroy
    redirect_to '/athletes/' + @ankle_mobility.athlete_id.to_s
  end


    private
    def ankle_mobility_params
        params.require(:ankle_mobility).permit()
    end
end
