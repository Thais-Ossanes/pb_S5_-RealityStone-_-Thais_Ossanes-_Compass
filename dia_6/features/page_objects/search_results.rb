class SearchResults <SitePrism::Page
    set_url '/#/search'

    elements :products, 'div.categoryRight li.ng-scope' # serve para validar que os elementos estão visíveis, se eu quiser interagir com o elemento é mais adequado 'sections'


end