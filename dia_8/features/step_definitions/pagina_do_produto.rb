Quando('acessar a páginado produto') do
    #@search_results_page.products.first.name.click #assim ele acessa a pagina do produto PDP
    @search_results_page.access_product_page(1) #novo método que faz o igual ao de cima
    @product_page = Pages::ProductPage.new
end
  

Quando('alterar a cor do produto') do
    # binding.pry
    @img_before = @product_page.main_image['src']
    @product_page.colors[1].click
end

  
Então('deverá alterar a imagem apresentada na PDP') do
    expect(@product_page.main_image['src']).not_to eql @img_before
end
  