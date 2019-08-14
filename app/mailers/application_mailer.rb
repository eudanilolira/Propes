class ApplicationMailer < ActionMailer::Base
  default from: ENV['SYSTEM_MAIL']
  layout 'mailer'
end
