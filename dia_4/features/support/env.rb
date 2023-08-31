require 'cucumber'
require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec' 
require 'site_prism'

ENVIRONMENT = ENV['ENVIRONMENT']
#NOTE: linha para confirmar se o enviroment está funcionando  
# puts ENVIROMENT 
ENVIRONMENT_CONFIG = YAML.load_file(File.dirname(__FILE__) + "/environment/#{ENVIRONMENT}.yml")
puts ENVIRONMENT_CONFIG # ele printa isso no terminal {"url"=>"https://www.google.com.br"}
URL = ENVIRONMENT_CONFIG['url']

# Note: Capybara registers this by default
#https://chromedriver.chromium.org/capabilities
#todos os chrome options https://peter.sh/experiments/chromium-command-line-switches/ 
#dentro do [] é onde adiciona os capabilities
#Capybara.register_driver :my_chrome do |app|
 #   caps = Selenium::WebDriver::Remote::Capabilities.chrome("goog:chromeOptions" => {"args" => ["--incognito"]})
  #  options = {browser: :chrome, desired_capabilities: caps}
   # Capybara::Selenium::Driver.new(app, options)

#end
Capybara.register_driver :my_chrome do |app|
  options = {
    browser: :chrome,
    desired_capabilities: {
      'goog:chromeOptions' => {
        args: ['--incognito']
      }
    }
  }
  Capybara::Selenium::Driver.new(app, options)
end

# essa forma acima acusa um erro, que a maioria dos colegas teve tabém:   
      #Dado que acesse a home # features/step_definitions/google.rb:3
      #undefined method `chrome' for Selenium::WebDriver::Remote::Capabilities:Class (NoMethodError)
      #./features/support/env.rb:20:in `block in <top (required)>'
      #./features/step_definitions/google.rb:6:in `"que acesse a home"'
      #features/specs/google.feature:6:in `que acesse a home'

Capybara.default_driver = :my_chrome
Capybara.app_host = URL


