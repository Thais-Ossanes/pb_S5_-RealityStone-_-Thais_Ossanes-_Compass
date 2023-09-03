#After do
    #usando palavras chave da documentação para adicionar palavras chave
  #  screenshot = Capybara.page.save_screenshot("reports/screenshots/sc.png")
 #   attach(screenshot, 'image/png')
#end
#NOTE: bundle exec cucumber -p default -t@search_for_product --publish
#publiica meu reporte para ser compartilhado com o time

After do |scenario|
    if scenario.failed?
        screenshot = Capybara.page.save_screenshot("reports/screenshots/sc.png")
        attach(screenshot, 'image/png')
    end
end