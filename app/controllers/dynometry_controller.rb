class DynometryController < ApplicationController
    def new
        @dynometry = Dynometry.new
    end
    
    def create
        @dynometry = Dynometry.new(dynometry_params)
        
        @dynometry.user_id = current_user.id
        @dynometry.athlete_id = session[:athlete_id]
        
        if @dynometry.save
          redirect_to '/athletes/' + @dynometry.athlete_id.to_s
        else
          render 'new'
        end
    end

    def edit
        @dynometry = Dynometry.find(params[:id])
    end
  
    def update
        @dynometry = Dynometry.find(params[:id])
        
        if @dynometry.update_attributes(dynometry_params)
            redirect_to '/athletes/' + @dynometry.athlete_id.to_s
        else
            render 'edit'
        end
    end

  def destroy
    @dynometry = Dynometry.find(params[:id])
    @dynometry.destroy
    redirect_to '/athletes/' + @dynometry.athlete_id.to_s
  end


    private
    def dynometry_params
        params.require(:dynometry).permit( :peak_extension_right, :peak_extension_left, :peak_extension_deficit, :peak_flexion_right, :peak_flexion_left, :peak_flexion_deficit,
                                           :power_extension_right_180, :power_extension_left_180, :power_extesion_deficit_180, :power_flexion_right_180, :power_flexion_left_180,
                                           :power_flexion_deficit_180, :power_extension_right_300, :power_extension_left_300, :power_extesion_deficit_300, :power_flexion_right_300,
                                           :power_flexion_left_300, :power_flexion_deficit_300, :job_extension_right_180, :job_extension_left_180, :job_extesion_deficit_180,
                                           :job_flexion_right_180, :job_flexion_left_180, :job_flexion_deficit_180, :job_extension_right_300, :job_extension_left_300, :job_extesion_deficit_300,
                                           :job_flexion_right_300, :job_flexion_left_300, :job_flexion_deficit_300, :fatigue_extension_right_300, :fatigue_extension_left_300, :fatigue_extesion_deficit_300,
                                           :fatigue_flexion_right_300, :fatigue_flexion_left_300, :fatigue_flexion_deficit_300, :IDM_extension, :IDM_flexion, :relation_extension_right, :relation_extension_left)
    end
end
