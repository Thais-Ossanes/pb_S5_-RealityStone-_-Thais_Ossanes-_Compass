#NOTE: base page é criado para ter as classes herdadas
#sendo utilizado em outros arquivos .rb

#importar o dsl do capybara dentro de uma classe test::unit require capybara
require 'capybara/dsl'

class BasePage
    include Capybara:: DSL

    def load
        visit('/')
    end
end