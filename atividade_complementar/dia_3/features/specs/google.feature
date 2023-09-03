#language: pt

Funcionalidade: Google

Contexto: Estar no home
    Dado que acesse a home

Cenário: Carregar a página do Google
    Então deverá exibir o logo da Google
    
Cenário: Realizar uma busca
    Quando buscar por "Compass"
    Então deverão ser encontrados resultados 