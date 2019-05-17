class ApplicationController < ActionController::Base
    include SessionsHelper
    include AthletesHelper
    
    before_action :set_locale
    
    def set_locale
      locale = params[:locale] || cookies[:locale]
      if locale.present?
        I18n.locale = locale
        cookies[:locale] = { value: locale, expires: 30.days.from_now}
      end
    end
  
end
