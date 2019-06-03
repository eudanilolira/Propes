class BridgeExtensionsController < ApplicationController
    def new
        @bridge_extension = BridgeExtension.new
    end
    
    def create
        @bridge_extension = BridgeExtension.new(bridge_extension_params)
        
        @bridge_extension.user_id = current_user.id
        @bridge_extension.athlete_id = session[:athlete_id]
        
        if @bridge_extension.save
          redirect_to '/athletes/' + @bridge_extension.athlete_id.to_s
        else
          render 'new'
        end
    end

    def edit
        @bridge_extension = BridgeExtension.find(params[:id])
    end
  
    def update
        @bridge_extension = BridgeExtension.find(params[:id])
        
        if @bridge_extension.update_attributes(bridge_extension_params)
            redirect_to '/athletes/' + @bridge_extension.athlete_id.to_s
        else
            render 'edit'
        end
    end

  def destroy
    @bridge_extension = BridgeExtension.find(params[:id])
    @bridge_extension.destroy
    redirect_to '/athletes/' + @bridge_extension.athlete_id.to_s
  end


    private
    def bridge_extension_params
        params.require(:bridge_extension).permit(:right_side, :left_side)
    end
end
