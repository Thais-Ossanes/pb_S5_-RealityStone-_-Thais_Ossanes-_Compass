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

# essa forma acima acusa um erro, que a maioria dos colegas teve tabém:   
      #Dado que acesse a home # features/step_definitions/google.rb:3
      #undefined method `chrome' for Selenium::WebDriver::Remote::Capabilities:Class (NoMethodError)
      #./features/support/env.rb:20:in `block in <top (required)>'
      #./features/step_definitions/google.rb:6:in `"que acesse a home"'
      #features/specs/google.feature:6:in `que acesse a home'

#NOTE: forma abaixo desenvolvida pelo colega Gian, e explicada em uma daily
#não consegui resolver de outra maneira
Capybara.register_driver :my_chrome do |app|
  options = Selenium::WebDriver::Chrome::Options.new
  options.add_argument('--incognito')
  options.add_argument('--start-maximized')
  options.add_argument('--window-size-1420-835')
  options.add_argument('--ignore-ssl-errors')
  options.add_argument('--ignore-certificate-errors')
  options.add_argument('--disable-popup-blocking')
  options.add_argument('--no-sandbox')
  options.add_argument('--acceptInsecureCerts=true')
  options.add_argument('--disable-gpu')
  options.add_argument('--disable-translate')
  options.add_argument('--disable-impl-side-painting')
  options.add_argument('--debug_leveç=3')

  if ENV['HEADLESS']
    options.add_argument('--headless')
    options.add_argument('--disable-site-isolation-trials')
  end

  client = Selenium::WebDriver::Remote::Http::Default.new
  client.read_timeout = 90
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end
#---------------------------------------------------------------------------

Capybara.default_driver = :my_chrome
Capybara.app_host = URL
Capybara.default_max_wait_time = 10


