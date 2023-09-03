require_relative '../sections/header.rb'

module Pages 
   class Home < SitePrism::Page
        set_url '/'
        element :loader, 'body > .loader' #automação n esta funcionando por conta desse loader
        section :header, Sections::Header, 'header'

        def search_for(product) #aqui ele está recebendo 'SPEAKERS'
            #header.btn_open_search.click
            #header.input_search.set product 
            header.click_and_input_text_for_search(product)
            wait_until_loader_visible#(wait: 2) ele espera no máximo 2s pelo loader
            wait_until_loader_invisible
        
            #NOTE: está com problema de carregamento então não clica de novo na lupa pq a tela fica carregando, esotu clicando manualmente
            header.btn_open_search.click
            header.close_serch.click

        end
    end
end