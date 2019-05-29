class YoYoController < ApplicationController
    def new
        @yo_yo = YoYo.new
    end
    
    def create
        @yo_yo = YoYo.new(yo_yo_params)
        
        @yo_yo.user_id = current_user.id
        @yo_yo.athlete_id = session[:athlete_id]
        
        if @yo_yo.save
          redirect_to '/athletes/' + @yo_yo.athlete_id.to_s
        else
          render 'new'
        end
    end

    def edit
        @yo_yo = YoYo.find(params[:id])
    end
  
    def update
        @yo_yo = YoYo.find(params[:id])
        
        if @yo_yo.update_attributes(yo_yo_params)
            redirect_to '/athletes/' + @yo_yo.athlete_id.to_s
        else
            render 'edit'
        end
    end

  def destroy
    @yo_yo = YoYo.find(params[:id])
    @yo_yo.destroy
    redirect_to '/athletes/' + @yo_yo.athlete_id.to_s
  end


    private
    def yo_yo_params
        params.require(:yo_yo).permit()
    end
end
