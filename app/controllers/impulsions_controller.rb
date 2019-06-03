class ImpulsionsController < ApplicationController
    def new
        @impulsion = Impulsion.new
    end
    
    def create
        @impulsion = Impulsion.new(impulsion_params)
        
        @impulsion.user_id = current_user.id
        @impulsion.athlete_id = session[:athlete_id]
        
        if @impulsion.save
          redirect_to '/athletes/' + @impulsion.athlete_id.to_s
        else
          render 'new'
        end
    end

    def edit
        @impulsion = Impulsion.find(params[:id])
    end
  
    def update
        @impulsion = Impulsion.find(params[:id])
        
        if @impulsion.update_attributes(impulsion_params)
            redirect_to '/athletes/' + @impulsion.athlete_id.to_s
        else
            render 'edit'
        end
    end

  def destroy
    @impulsion = Impulsion.find(params[:id])
    @impulsion.destroy
    redirect_to '/athletes/' + @impulsion.athlete_id.to_s
  end


    private
    def impulsion_params
        params.require(:impulsion).permit(:distance, :P)
    end
end
