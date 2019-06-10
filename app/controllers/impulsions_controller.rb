class ImpulsionsController < ApplicationController
    def new
        @impulsion = Impulsion.new
    end
    
    def create
        @impulsion = Impulsion.new(impulsion_params)

        begin
          # MUDAR ESSE 60 PARA O PESO DO ATLETA !!!!!!!!!!!!!!!!!!
          @impulsion.result = 2.21 * (60) * (@impulsion.distance ** 2)
          @impulsion.qualitative_result = calc_result(@impulsion.result, Athlete.find(session[:athlete_id]).gender)
        rescue

        end
        
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
        params.require(:impulsion).permit(:distance)
    end

    private
    def calc_result(form, gender)
      if gender == "M"
          if form < 21
            return "Muito Ruim"
          elsif form < 34
            return "Ruim"
          elsif form < 49
            return "Media"
          elsif form < 61
            return "Acima da Media"
          else
            return "Excelente"  
          end   
      else
          if form < 6
            return "Muito Ruim"
          elsif form < 16
            return "Ruim"
          elsif form < 26
            return "Media"
          elsif form < 33
            return "Acima da Media"
          else
            return "Excelente"  
          end 
      end
    end
end
