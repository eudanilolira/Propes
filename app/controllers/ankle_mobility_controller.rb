class AnkleMobilityController < ApplicationController
    def new
        @ankle_mobility = AnkleMobility.new
    end
    
    def create
        @ankle_mobility = AnkleMobility.new(ankle_mobility_params)
        
        @ankle_mobility.user_id = current_user.id
        @ankle_mobility.athletes_id = current_athlete
        
        if @ankle_mobility .save
          redirect_to '/athletes'
        else
          render 'new'
        end
    end

    private
    def ankle_mobility_params
        params.require(:ankle_mobility).permit()
    end
end
