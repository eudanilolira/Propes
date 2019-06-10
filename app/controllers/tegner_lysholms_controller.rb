class TegnerLysholmsController < ApplicationController
    def new
        @tegner_lysholm = TegnerLysholm.new
    end
    
    def create
        @tegner_lysholm = TegnerLysholm.new(tegner_lysholm_params)
        
        result = 0
		@tegner_lysholm.attributes.each do |a|
          if not ["updated_at", "created_at", "user_id", "athlete_id", "qualitative_result", "id", "result"].include? a 
            result += a[1].to_i
          end
		end

        @tegner_lysholm.result = result
        @tegner_lysholm.qualitative_result = calc_result(result)
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

    private
    def calc_result(result)
        if result < 66
        	return "Ruim"
        elsif result < 85
        	return "Regular"
        elsif result < 96
        	return "Bom"
        elsif result > 96
        	return "Excelente"
        end
    end
end
