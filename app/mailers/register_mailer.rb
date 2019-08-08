class RegisterMailer < ApplicationMailer
    default from: ENV['SYSTEM_MAIL']
    default user_name: ENV['SYSTEM_MAIL_USERNAME']
    default password: ENV['SYSTEM_MAIL_PASSWORD']
    
    default address: 'smtp.gmail.com'
    default domain: 'gmail.com'


    def register_mail
        @user = params[:user]
        
        mail(to: ENV['ADMIN_MAIL'], subject: '[Propes] Tentativa de criação de novo avaliador')
    end

end

