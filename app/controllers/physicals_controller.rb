class PhysicalsController < ApplicationController
    def new
        @physical = Physical.new
    end
    
    def create
        @physical = Physical.new(physical_params)
        
        @physical.user_id = current_user.id
        @physical.athlete_id = session[:athlete_id]
        
        if @physical.save
          redirect_to '/athletes/' + @physical.athlete_id.to_s
        else
          render 'new'
        end
    end

    def edit
        @physical = Physical.find(params[:id])
    end
  
    def update
        @physical = Physical.find(params[:id])
        
        if @physical.update_attributes(physical_params)
            redirect_to '/athletes/' + @physical.athlete_id.to_s
        else
            render 'edit'
        end
    end

  def destroy
    @physical = Physical.find(params[:id])
    @physical.destroy
    redirect_to '/athletes/' + @physical.athlete_id.to_s
  end


    private
    def physical_params
        params.require(:physical).permit( :blood_pressure, :respiratory_frequency, :heart_rate, :SpO2, :weight, :height, :imc, :result)
    end
end
