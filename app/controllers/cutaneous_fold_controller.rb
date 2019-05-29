class CutaneousFoldController < ApplicationController
    def new
        @cutaneous_fold = Cutaneous_fold.new
    end
    
    def create
        @cutaneous_fold = Cutaneous_fold.new(cutaneous_fold_params)
        
        @cutaneous_fold.user_id = current_user.id
        @cutaneous_fold.athlete_id = session[:athlete_id]
        
        if @cutaneous_fold.save
          redirect_to '/athletes/' + @cutaneous_fold.athlete_id.to_s
        else
          render 'new'
        end
    end

    def edit
        @cutaneous_fold = Cutaneous_fold.find(params[:id])
    end
  
    def update
        @cutaneous_fold = Cutaneous_fold.find(params[:id])
        
        if @cutaneous_fold.update_attributes(cutaneous_fold_params)
            redirect_to '/athletes/' + @cutaneous_fold.athlete_id.to_s
        else
            render 'edit'
        end
    end

  def destroy
    @cutaneous_fold = Cutaneous_fold.find(params[:id])
    @cutaneous_fold.destroy
    redirect_to '/athletes/' + @cutaneous_fold.athlete_id.to_s
  end


    private
    def cutaneous_fold_params
        params.require(:cutaneous_fold).permit()
    end
end
