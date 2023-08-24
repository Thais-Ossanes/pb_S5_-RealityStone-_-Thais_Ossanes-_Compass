#language: pt

Funcionalidade: Menu Flutuante
SENDO usuário do ecommerce Riachuelo
QUERO navegar pelos menus na tela inicial
PARA poder filtrar uma categoria de acordo com necessidade


# feminino -> CATEGORIA
# coleção feminina -> SUBCATEGORIA
# blazer -> OPÇÃO

    Contexto: Estar no home
        Dado que esteja no home
        Quando passar o cursor por 1 menu
       # E clicar

    Cenário: Passar o cursor pela categoria
        Então a categoria deverá ficar sublinhada
        E permanecerá sublinhada enquanto o cursor estiver nela

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
    Cenário: Categorias que não possuem menus flutuantes
    Então deverá permanecer sem abrir menu flutuante