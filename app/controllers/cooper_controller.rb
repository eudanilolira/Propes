class CooperController < ApplicationController
    def new
        @cooper = Cooper.new
    end
    
    def create
        @cooper = Cooper.new(cooper_params)
        
        @cooper.user_id = current_user.id
        @cooper.athlete_id = session[:athlete_id]
        
        if @cooper.save
          redirect_to '/athletes/' + @cooper.athlete_id.to_s
        else
          render 'new'
        end
    end

    def edit
        @cooper = Cooper.find(params[:id])
    end
  
    def update
        @cooper = Cooper.find(params[:id])
        
        if @cooper.update_attributes(cooper_params)
            redirect_to '/athletes/' + @cooper.athlete_id.to_s
        else
            render 'edit'
        end
    end

  def destroy
    @cooper = Cooper.find(params[:id])
    @cooper.destroy
    redirect_to '/athletes/' + @cooper.athlete_id.to_s
  end


    private
    def cooper_params
        params.require(:cooper).permit(:distance, :aerobic_capacity, :v2max)
    end
end
