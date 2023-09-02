class Home <SitePrism::Page
    set_url '/'

    element :btn_open_search, '#search #menuSearch'
    element :input_search, '#autoComplete'
    element :loader, 'body > .loader' #automação n esta funcionando por conta desse loader

    def search_for(product) #aqui ele está recebendo 'SPEAKERS'
        btn_open_search.click
        input_search.set product 
        wait_until_loader_visible#(wait: 2) ele espera no máximo 2s pelo loader
        wait_until_loader_invisible
       
        #NOTE: está com problema de carregamento então não clica de novo na lupa pq a tela fica carregando, esotu clicando manualmente
        btn_open_search.click

    end

end