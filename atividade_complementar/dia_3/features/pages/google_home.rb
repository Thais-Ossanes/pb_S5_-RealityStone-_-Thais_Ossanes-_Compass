#NOTE: forma de chamar a herança em rb
#usando '<'
class GoogleHome < BasePage
    
    def search_for(query)
        find("textarea[name='q']").set query
        click_button  'Pesquisa Google' 
    end

end