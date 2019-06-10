	class YoYosController < ApplicationController
		def new
			@yo_yo = YoYo.new
		end
		
		def create
			@yo_yo = YoYo.new(yo_yo_params)
			
			@yo_yo.user_id = current_user.id
			@yo_yo.athlete_id = session[:athlete_id]
			
			athlete = Athlete.find(session[:athlete_id])

			@yo_yo.result = (((@yo_yo.distance) * 0.0084) + 36.4).round(2)
			@yo_yo.qualitative_result = calc_result(athlete.age, @yo_yo.result, athlete.gender)     

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
			params.require(:yo_yo).permit(:distance)
		end

		def calc_result(age, form, gender)
			if gender == "M"
				if age < 25
					if form < 30
						return "Muito Ruim"
					elsif form < 36
						return "Ruim"
					elsif form < 41
						return "Abaixo da media"
					elsif form < 46
						return "Media"
					elsif form < 51
						return "Acima da media"
					elsif form < 60
						return "Bom"    
					elsif form > 60
						return "Excelente" 
					end   
				elsif age < 35
					if form < 30
						return "Muito Ruim"
					elsif form < 35
						return "Ruim"
					elsif form < 40
						return "Abaixo da media"
					elsif form < 43
						return "Media"
					elsif form < 49
						return "Acima da media"
					elsif form < 56
						return "Bom"    
					elsif form > 56
						return "Excelente" 
					end

				elsif age < 45
					if form < 26
						return "Muito Ruim"
					elsif form < 31
						return "Ruim"
					elsif form < 35
						return "Abaixo da media"
					elsif form < 39
						return "Media"
					elsif form < 43
						return "Acima da media"
					elsif form < 51
						return "Bom"    
					elsif form > 51
						return "Excelente" 
					end
				end
			
			else 
				if age < 25
					if form < 28
						return "Muito Ruim"
					elsif form < 32
						return "Ruim"
					elsif form < 37
						return "Abaixo da media"
					elsif form < 41
						return "Media"
					elsif form < 46
						return "Acima da media"
					elsif form < 56
						return "Bom"    
					elsif form > 56
						return "Excelente" 
					end   
				elsif age < 35
					if form < 26
						return "Muito Ruim"
					elsif form < 31
						return "Ruim"
					elsif form < 35
						return "Abaixo da media"
					elsif form < 39
						return "Media"
					elsif form < 45
						return "Acima da media"
					elsif form < 52
						return "Bom"    
					elsif form > 52
						return "Excelente" 
					end

				elsif age < 45
					if form < 22
						return "Muito Ruim"
					elsif form < 27
						return "Ruim"
					elsif form < 31
						return "Abaixo da media"
					elsif form < 34
						return "Media"
					elsif form < 38
						return "Acima da media"
					elsif form < 45
						return "Bom"    
					elsif form > 45
						return "Excelente" 
					end
				end
			end
		end 

	end
