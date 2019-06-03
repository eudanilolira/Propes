class TegnerLysholmsController < ApplicationController
    def new
        @tegner_lysholm = TegnerLysholm.new
    end
    
    def create
        @tegner_lysholm = TegnerLysholm.new(tegner_lysholm_params)
        
        @tegner_lysholm.user_id = current_user.id
        @tegner_lysholm.athlete_id = session[:athlete_id]
        
        if @tegner_lysholm.save
          redirect_to '/athletes/' + @tegner_lysholm.athlete_id.to_s
        else
          render 'new'
        end
    end

    def edit
        @tegner_lysholm = TegnerLysholm.find(params[:id])
    end
  
    def update
        @tegner_lysholm = TegnerLysholm.find(params[:id])
        
        if @tegner_lysholm.update_attributes(tegner_lysholm_params)
            redirect_to '/athletes/' + @tegner_lysholm.athlete_id.to_s
        else
            render 'edit'
        end
    end

  def destroy
    @tegner_lysholm = TegnerLysholm.find(params[:id])
    @tegner_lysholm.destroy
    redirect_to '/athletes/' + @tegner_lysholm.athlete_id.to_s
  end


    private
    def tegner_lysholm_params
        params.require(:tegner_lysholm).permit( :instability, :pain, :swelling, :climb_stairs, :squat, :locking, :limp, :support)
    end
end
