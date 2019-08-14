class ApplicationController < ActionController::Base
	rescue_from CanCan::AccessDenied do |exception|
		if current_user.nil?
			redirect_to main_app.root_url
		else
			redirect_to '/users/' + current_user.id.to_s
		end 
	end
	
	
	include SessionsHelper
    include AthletesHelper
	before_action :set_locale
	@@evaluation_list = []
    
    def set_locale
    	locale = params[:locale] || cookies[:locale]
    	if locale.present?
    		I18n.locale = locale
        	cookies[:locale] = { value: locale, expires: 30.days.from_now}
      	end
    end

	def set_list
		receiving = JSON.parse params[:list]

		@@evaluation_list = receiving.split(',')
		puts @@evaluation_list[0][0]
		next_evaluation()
	end

	def next_evaluation
		if @@evaluation_list.length == 0
			redirect_to "/athletes/"
		else
			next_ev = @@evaluation_list[0][0]
			@@evaluation_list[0].delete_at(0)
			redirect_to "/#{next_ev}"
		end     
	end  


end
