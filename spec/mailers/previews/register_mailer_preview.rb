# Preview all emails at http://localhost:3000/rails/mailers/register_mailer
class RegisterMailerPreview < ActionMailer::Preview
    def send_confirmation_email
        RegisterMailer.with(user: User.first).send_confirmation_email
    end
end
