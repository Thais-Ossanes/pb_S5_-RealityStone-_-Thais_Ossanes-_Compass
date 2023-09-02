
Dado('que esteja na home') do     
    @home_page = Home.new
    @home_page.load
    #binding.pry #ponto de debug, para saber se a página realmente vai carregar, colocar @home_page no terminal que ele diz o estado da variável
end                                                                           
                                                                                
Quando('realizar uma busca por um produto existente') do  
    #wait_for_element('#search #menuSearch', timeout: 5)    
    @home_page.search_for('SPEAKERS')
    @search_results_page = SearchResults.new                                  
    #binding.pry                                        
    #NOTE: esse erro significa que o método da variável n foi implementado
    #undefined method `search_for' for #<Home:0x00000230cbbed540 @loaded=true, @_page=#<Capybara::Session>, @load_error=nil> (NoMethodError)

end

Então('deverão ser retornado resultados na busca') do     
    #@search_results_page #vai precisar trazer produtos
    binding.pry #debugando com o pry: @search_results_page, @search_results_page.products,  @search_results_page.products.first,  @search_results_page.products.first.text, expect(@search_results_page).not_to have_products 
    expect(@search_results_page).to have_products

end                                                                           