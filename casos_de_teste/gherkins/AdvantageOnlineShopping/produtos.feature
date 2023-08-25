#language: pt

# @regression toda tudo que está abaixo dela e em outros arquivos onde ela for chamada, roda dois ou mais arquivos de uma vez
@regression
@OurProducts
Funcionalidade: OurProducts
    SENDO um usuário do Ecommerce AdvantageOnlineShopping
    QUERO poder personalizar os produtos que irei comprar
    PARA ter uma melhor experiência de compras

    Contexto: Estar na págna de um produto
        Dado que esteja na home
        Quando realizar uma busca por um produto existente
        #NOTE: usado para adicionar parâmetros
        E acessar a páginado produto

@product_change_color
    Cenário: Trocar a cor do produto    
        Quando alterar a cor do produto
        Então deverá alterar a imagem aoresentada na OurProducts

#NOTE: rodariam os dois de forma igual por isso se adicionaria outra tag deferenciando os dois cenários       
@increase_product_quantity
    Cenário: Aumentar a quantidade de produtos no carrinho 
        Quando aumentar a quantidadede produto
        Então deverá alterar a quantidade exibida na OurProducts


@increase_product_quantity
   Cenário: Aumentar a quantidade do produto na OurProducts aumenta no carrinho
        Quando aumentar  a quantidade de produtos
        E adicionar ao carrinho
        Então o produto deverá ser adicionado com a quantidade aumentada

@add_product_to_cart
    Cenário: Adicionar produto ao carrinho pela Página do Produto
        Quando adicionar o produto ao carrinho
        Então o produto deverá ser adicionado ao carrinho com sucesso

    Esquema do Cenário: 
          
