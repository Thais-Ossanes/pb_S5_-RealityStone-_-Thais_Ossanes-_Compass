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

#OPÇÕES -----
    Cenário: Abrir o menu de opções
        Então abrirá o menu de opções para escolher
        E ficará aberto enquanto o cursor estiver no menu

    Cenário: Escolhendo uma opção
        Quando abrir o menu de subcategorias
        E clicar em cima de uma opção
        Então deverá direcionar para o catálogo da opção

    Cenário: Escolhendo todas as opções de uma subcategoria
        Quando abrir o menu de subcategoria
        E clicar em cima do botão 'ver todos'
        Então deverá direcionar para o catálogo com todas as opções selecionadas

    Cenário: Passar o cursos pelas opções indicando quais são links de outras páginas
        Quando Quando abrir o menu de opções
        E passar o cursor por cima das subcategoria
        Então deverá aparecer o ícone de uma seta

#CATEGORIAS ESPECÍFICAS -----
    Esquema do Cenário: Categorias que não abrem menu flutuante
    Então a "<categoria>" deverá permanecer sem abrir menu flutuante

    Exemplos: 

    |   categoria  |
    | Novidades    |
    | Personagens  |
    | Outlet       |

#usar cenários quando forem problemas diferentes e esquema de cenário quando forem vários problemas iguais  