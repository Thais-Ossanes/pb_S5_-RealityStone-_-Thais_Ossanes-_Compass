# Pesquisas Realizadas e Sites Acessados #

Lista dos sites que eu mais acessei durante a Sprint:

- https://cucumber.io/docs/cucumber/reporting/?lang=java 
- https://git-scm.com/book/pt-br/v2/Branches-no-Git-O-b%C3%A1sico-de-Ramifica%C3%A7%C3%A3o-Branch-e-Mesclagem-Merge
- https://github.com/site-prism/site_prism
- https://github.com/site-prism/site_prism 
-  https://docs.github.com/pt/get-started/writing-on-github/working-with-advanced-formatting/creating-and-highlighting-code-blocks      
- https://medium.com/@dieggocarrilho/como-realizar-o-merge-de-um-%C3%BAnico-arquivo-5a32db165b75
-  https://stackoverflow.com/questions/62965073/gemextbuilderror-error-failed-to-build-gem-native-extension-keep-getting?newreg=28da1ab7f312404588d57d257ced4359

Deixo aqui os créditos ao colega Gian, que durante as dailys apresentou esse trecho de código como uma solução para um erro que aconteceu com boa parte do time. Eu não consegui encontrar outra solução, e como ele compartilhou conosco o código, utilizei para finalizar o meu projeto.
<br>
 Trecho em questão: Se encontra em * "features/support/env.rb" *

``` ruby
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
```
