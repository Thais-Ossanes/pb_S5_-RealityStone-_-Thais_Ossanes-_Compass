require_relative '../sections/header.rb'
require_relative '../sections/products.rb'

module Pages 
    class SearchResults < SitePrism::Page
        set_url '/#/search'
        
        section :header, Sections::Header, 'header'
       # elements :products, 'div.categoryRight li.ng-scope' # serve para validar que os elementos estão visíveis, se eu quiser interagir com o elemento é mais adequado 'sections'
        sections :products, Sections::Products, 'div.categoryRight li.ng-scope'
        
        def access_product_page(index)
            products[index].name.click
        end

    end
end