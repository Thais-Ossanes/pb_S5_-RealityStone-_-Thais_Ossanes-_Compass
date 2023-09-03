#language: pt

Funcionalidade: Barra de menu superior
SENDO usuário do ecommerce Advantage Online Shopping
QUERO navegar pelos menus na tela inicial
PARA poder realizar uma compra

    Contexto: Estar no home
        Dado que esteja no home
        Quando passar o cursor por 1 opção da barra de menu
       # E clicar

    Cenário: Passar o cursor pela categoria
        Então o cursor aparecerá como pointer
        E permanecerá como pointer enquanto estiver em cima da opção

    Cenário: Escolhendo uma categoria
        Quando clicar em uma categoria
        Então deverá direcionar para o catálogo dessa categoria
    
    Esquema do Cenário: Opções quando clicar em 'Our Products'
        Quando clicar na categoria '<Our Products>'
        Então deverá abrirum menu de opções

    Exemplos: 

    |   Our Products  |
    | Speakers        |
    | Tablets         |
    | Headphones      |
    | Mice            |
    | Laptop          |

#NOTE: ainda não está completo, tem alguns itens epecíficos que precisam ser colocados

    
 