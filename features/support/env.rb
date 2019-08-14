require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
# Instancia/Registra o driver do Selenium.
Capybara.register_driver :selenium do |app|
 Capybara::Selenium::Driver.new(app,:browser => :chrome,timeout: 30)
end
Capybara.configure do |config|
  # digo que o driver padrao eh o do selenium.
  config.default_driver = :selenium 
  # defino a url padrao.
  config.app_host = "https://www.google.com"
  # defino o tempo maximo de espera para os elementos.
  config.default_max_wait_time = 30
end
