class CutaneousFoldsController < ApplicationController
    def new
        @cutaneous_fold = CutaneousFold.new
    end
    
    def create
        @cutaneous_fold = CutaneousFold.new(cutaneous_fold_params)
        
        @cutaneous_fold.user_id = current_user.id
        @cutaneous_fold.athlete_id = session[:athlete_id]
        
        if @cutaneous_fold.save
          next_evaluation()
        else
          render 'new'
        end
    end

    def edit
        @cutaneous_fold = CutaneousFold.find(params[:id])
    end
  
    def update
        @cutaneous_fold = CutaneousFold.find(params[:id])
        
        if @cutaneous_fold.update_attributes(cutaneous_fold_params)
            redirect_to '/athletes/' + @cutaneous_fold.athlete_id.to_s
        else
            render 'edit'
        end
    end

  def destroy
    @cutaneous_fold = CutaneousFold.find(params[:id])
    @cutaneous_fold.destroy
    redirect_to '/athletes/' + @cutaneous_fold.athlete_id.to_s
  end


    private
    def cutaneous_fold_params
        params.require(:cutaneous_fold).permit(:tricipital, :subescapular, :average_axilar, :breastplate, :supra_ilcia, :abdomen, :thigh, :bone_mass_BE, :bone_mass_BU, 
                                               :bone_mass_BF, :bone_mass_BM,)
    end
end
