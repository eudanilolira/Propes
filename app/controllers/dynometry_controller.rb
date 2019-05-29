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
        params.require(:dynometry).permit()
    end
end
