class RegisterMailer < ApplicationMailer
    default from: ENV['SYSTEM_MAIL']
    default user_name: ENV['SYSTEM_MAIL_USERNAME']
    default password: ENV['SYSTEM_MAIL_PASSWORD']
    default port: 587
    default authentication: 'plain'
    default enable_starttls_auto: true
    default address: 'smtp.gmail.com'


    def send_confirmation_email
        #@user = params[:user]
        #mail(to: ENV['ADMIN_MAIL'], subject: '[Propes] Solicitação de cadastro de avaliador' )
        mail(to: 'drla@cin.ufpe.br',
        body: 'teste',
        content_type: "text/html",
        subject: "Already rendered!")


    end
end
