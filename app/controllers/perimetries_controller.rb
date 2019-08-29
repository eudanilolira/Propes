class PerimetriesController < ApplicationController
    def new
        @perimetry = Perimetry.new
    end
    
    def create
        @perimetry = Perimetry.new(perimetry_params)
        
        @perimetry.user_id = current_user.id
        @perimetry.athlete_id = session[:athlete_id]
        
        if @perimetry.save
          next_evaluation()
        else
          render 'new'
        end
    end

    def edit
        @perimetry = Perimetry.find(params[:id])
    end
  
    def update
        @perimetry = Perimetry.find(params[:id])
        
        if @perimetry.update_attributes(perimetry_params)
            redirect_to '/athletes/' + @perimetry.athlete_id.to_s
        else
            render 'edit'
        end
    end

    def destroy
      @perimetry = Perimetry.find(params[:id])
      @perimetry.destroy
      redirect_to '/athletes/' + @perimetry.athlete_id.to_s
    end
    
    private
    def perimetry_params
        params.require(:perimetry).permit(:left_arm_relaxed, :right_arm_relaxed, :left_contracted_arm, :right_contracted_arm, :chest, :abdomen, :left_proximal_thigh, :right_proximal_thigh,
                                          :left_middle_thigh, :right_middle_thigh, :left_distal_thigh, :right_distal_thigh, :left_leg, :right_leg, :waist, :hip, :result)
    end
end
