class FooterExemplosMapeamentos < SitePrism::Section
    element :img_facebook, 'img[name="follow_facebook"]'
end

class ProductsExemplosMapeamentos < SitePrism::Section
    element :name, 'a.productName'
    element :price, 'a.productPrice'
end

class HomeExemplosMapeamentos < SitePrism::Page

    set_url '/'

#como o site prism interpreta os objetos mapeados:
    #element #elemento específico
    #elements #lista com vários elementos, em um array, ex: elemetos 'li' menus listas etc, primeiro elemento .first[0]
    #section # partes maiores que contem elementos dentro, header footer etc
    #sections #corpo do site, lista de sessoes da pág, lista de produtos.

    element :btn_open_search, '#search #menuSearch' #mapeamento
    elements :menu_items, '.nav-li-Links a'
    #menu_items.first.click #selecionar o primeiro a clicar
    #para clicar no item 2 da lista -> menu_items[1].click (partido de 0 da direta pra esquerda conforme listado no site)
    section :footer, FooterExemplosMapeamentos, 'footer.ng-scope'
    # footer.img_facebook.click para saber apenas de 1 elemento
    sections :products, ProductsExemplosMapeamentos, '.categoryRight li.ng-scope'
   # clicar no preço de um produto específicon products[2].price.click
   # cliclar no último produto products.last.click
    

end 

