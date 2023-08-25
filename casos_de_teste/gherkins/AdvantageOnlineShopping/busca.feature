#language: pt

#primeiro arquivo .feature para mostrar a lógica em gherkin
#e a lógica para automatizar testes

#NOTE: adicionando tags que serão úteis para desenvolver a automação:
#NOTE: tags são colocadas antes dos cenários
# @regression toda tudo que está abaixo dela e em outros arquivos onde ela for chamada, roda dois ou mais arquivos de uma vez
@regression
#adiciono uma tag específica para separar apenas esse arquivo, ou seja, rodar apenas esse
@search
Funcionalidade: Busca
    COMO um usuário do Ecommerce AdvantageOnlineShopping
    QUERO poder buscar por diferentes produtos
    PARA poder personalizar minhas compras

    #NOTE: para usar no contexto, apenas palavras iniciais
    # usado parecido com uma classe, para n repetir as chamadas
    Contexto: Estar na home
        Dado que esteja na home
        
@search_product_available
    Cenário: Buscar por um produto existente
        #Dado que esteja na home  #presente ou passado
        Quando realizar uma busca por um produto existente
        Então deverão ser retornado resultados na busca 

    Esquema do Cenário: Buscar por produtos existentes
        #recebe o 'Dado' do contexto
        Quando buscar pelo produto "<produto>"
        Então deverão ser retornados resultados na busca
    
    Exemplos: 
    |   produto     |
    | Speakers      |
    | Tablets       |
    | Laptops       |
    | Mice          |
    | Headphones    |
# primeira execução = Speakers
# segunda execução = tablets 
# terceira execução = ... etc