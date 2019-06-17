class CoopersController < ApplicationController
    def new
		@cooper = Cooper.new
    end
    
    def create
        @cooper = Cooper.new(cooper_params)
        @cooper.user_id = current_user.id
        @cooper.athlete_id = session[:athlete_id]
        athlete = Athlete.find(session[:athlete_id])
        @cooper.result = (((@cooper.distance - 504))/45).round(2)
        @cooper.qualitative_result = calc_result(athlete.age, @cooper.distance, athlete.gender) 
        
        if @cooper.save
          redirect_to '/athletes/' + @cooper.athlete_id.to_s
        else
          render 'new'
        end
    end

    def edit
        @cooper = Cooper.find(params[:id])
    end
  
    def update
        @cooper = Cooper.find(params[:id])
        
        if @cooper.update_attributes(cooper_params)
            redirect_to '/athletes/' + @cooper.athlete_id.to_s
        else
            render 'edit'
        end
    end

  def destroy
    @cooper = Cooper.find(params[:id])
    @cooper.destroy
    redirect_to '/athletes/' + @cooper.athlete_id.to_s
  end


    private
    def cooper_params
        params.require(:cooper).permit(:distance)
    end

    private
	def calc_result(age, form, gender)
		if gender == "M"
			if age < 20
				if form < 2091
					return "Muito Ruim"
				elsif form < 2201
					return "Ruim"
				elsif form < 2511
					return "Media"
				elsif form < 2771
					return "Acima da Media"
				elsif form < 3001
					return "Boa"
				else
					return "Excelente"    
				end   
		
			elsif age < 30
				if form < 1961
					return "Muito Ruim"
				elsif form < 2111
					return "Ruim"
				elsif form < 2401
					return "Media"
				elsif form < 2640
					return "Acima da Media"
				elsif form < 2831
					return "Boa"
				else
					return "Excelente"    
				end  

			elsif age < 40
				if form < 1901
					return "Muito Ruim"
				elsif form < 2091
					return "Ruim"
				elsif form < 2401
					return "Media"
				elsif form < 2511
					return "Acima da Media"
				elsif form < 2721
					return "Boa"
				else
					return "Excelente"    
				end
			end
		else
			if age < 20
				if form < 1611
					return "Muito Ruim"
				elsif form < 1901
					return "Ruim"
				elsif form < 2081
					return "Media"
				elsif form < 2300
					return "Acima da Media"
				elsif form < 2430
					return "Boa"
				else
					return "Excelente"    
				end 

			elsif age < 30
				if form < 1551
					return "Muito Ruim"
				elsif form < 1791
					return "Ruim"
				elsif form < 1971
					return "Media"
				elsif form < 2161
					return "Acima da Media"
				elsif form < 2331
					return "Boa"
				else
					return "Excelente"    
				end

			elsif age < 40
				if form < 1510
					return "Muito Ruim"
				elsif form < 1691
					return "Ruim"
				elsif form < 1961
					return "Media"
				elsif form < 2081
					return "Acima da Media"
				elsif form < 2241
					return "Boa"
				else
					return "Excelente"    
				end
			end
		end
	end
end
