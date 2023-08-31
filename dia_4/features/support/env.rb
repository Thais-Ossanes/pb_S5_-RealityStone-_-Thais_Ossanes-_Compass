require 'cucumber'
require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec' 
require 'site_prism'

ENVIROMENT = ENV['ENVIROMENT']
#NOTE: linha para confirmar se o enviroment está funcionando  
# puts ENVIROMENT 

Capybara.default_driver = :selenium_chrome
Capybara.app_host = 'https://www.google.com.br'


