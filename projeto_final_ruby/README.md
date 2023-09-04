# Instruções Gerais para o Funcionamento dos Testes Automatizados ⇩⇩ #

<p>

⚠️ Warning: O projeto foi desenvolvido com o **sistema operacional Windows**, ou seja, todas as aplicações foram instaladas na versão para Windows e as orientações do README são voltadas para o mesmo. A recomendação para o bom funcionamento da automação, é que se utilize as mesmas versões, o mesmo sistema operacional e os mesmos programas.

<br>

⚠️ Warning: Se você já possui os pré-requisitos e já clonou a pasta com os arquivos para a sua máquina ou GitHub, pode ir para o item [Executando](#executando), lá estão as instuções para executar os testes automatizados na sua máquina. 

</p>

<p>
O editor de texto utilizado durante o desenvolvimento da calculadora foi o Visual Studio Code (VScode), <a herf="https://code.visualstudio.com/">Download aqui</a>. O terminal escolhido foi o Cmder (v1.3.24), <a href="https://github.com/cmderdev/cmder/releases/tag/v1.3.24">Download aqui</a>, podendendo também ser utilizado terminal do VScode.
</p>


 **Pré-Requisitos**

* Ter uma conta no GitHub ➝ Se não possuir, crie sua conta em: <https://github.com/signup> 
* Ter o Git instalado na máquina (v2.41.0 x64) ➝ Passo a passo em: <https://git-scm.com/book/pt-br/v2/Come%C3%A7ando-Instalando-o-Git>
* Terminal;
* Editor de Texto + extensões em Ruby;
* Ruby+Devkit (v3.2.2-1 x64) _versão recomendada_ ➝ Disponível em: <https://rubyinstaller.org/downloads/>
* Google Chrome (v116.0.5845.141 x64)
* Gem ➝ cucumber-ruby (v9.0.1)
* Gem ➝ chrome driver ➝ selenium-webdriver (v4.12.0, 4.11.0)
* Lista das Gem's utilizadas ⇩

``` ruby
gem 'cucumber'
gem 'capybara'
gem 'selenium-webdriver'
gem 'rspec' 
gem 'site_prism'
gem 'pry'
gem 'faker'

```

Tendo os pré-requistos, partimos para a preparaçãpo do ambiente e as instruções para instalação das Gem's e extensões. 

## Preparação de Ambiente ##

1. VScode

Com o programa aberto, selecionamos as abas 'view -> extensions' **atalho Crtl+Shift+X** <br>
Sugestão de extensões: Ruby, Snippets and Syntax Highlight for Gherkin (Cucumber), Gherkin Indent, EditorConfig, CucumberOpen, Ruby Solargraph e Code Runner.

2. Cmder

Abrir o terminal e executar os seguintes comandos: <br>
gem install win32console<br>
gem install bundler<br>
gem install ruby-debug-ide <br>
<br>
Conferir as gem's instaladas com o comando: gem list ou gem list bundler + (nome da gem para filtrar) <br> <br>

⚠️ Warning: **Quando for usar o Cmder**, não esqueça de abrir o terminal na pasta onde os arquivos da automação de testes foram baixados, ou, acessar a pasta usando o comando cd + caminho das pastas.

## Clonando o Diretório ##
Obs: caso você queira clonar todo o repositório para o seu GitHub, siga os passos do [README](../README.md) da main. 
1. Crie uma nova pasta na sua máquina;
2. Abra o Git Bash na pasta criada;
3. Entre com o comando: ``` 
git clone -n [https://github.com/Thais-Ossanes/pb_Sprint_5_-RealityStone-_-Thais_Ossanes-_Compass.git ] ```;
(após esse comando, o repositório com os arquivos está acessível)
4. Comando **ls** confirma que o repositório foi clonado (confirma vendo o nome do repositório: **pb_Sprint_5_-RealityStone-_-Thais_Ossanes-_Compass**);
5. Entre com o comando ```  
cd pb_Sprint_5_-RealityStone-_-Thais_Ossanes-_Compass```;

6. Entre com o comando ```
git checkout HEAD [projeto_final_ruby/automacao_Advantage_Online_shopping]```;

7. Comando **ls** confirma se a pasta foi clonada;
8. Entre com o comando ``` 
cd automacao_Advantage_Online_shopping```;

9. Entre com o comando ```
code .``` (abrirá os aquivos no VScode);

## Executando ##

Abra o Cmder na pasta 'automacao_Advantage_Online_shopping ' e entre com o comando ```
bundle install``` (assim serão instaladas as gem's listadas acima, que estão cotidas no arquivo 'Gemfile').
Após instalar as Gem's entre com o comando ```
bundle exec cucumber `` e serão executados 11 cenários de testes todos podendo ser acompanhados na tela.
<br><br>

Aqui algumas sugestões de testes unitários para validação com **binding.pry** (tirar o comentário nos specs)

> busca por diferentes produtos e valida se está entregando resultados ➝ ``` 
bundle exec cucumber -p default -t@search_for_different_products ```

> Entrada de dados pelo formulário usando faker ➝ ```
bundle exec cucumber -p default -t@contact_ok ```

<br>

## Documentação ##

* [Chrome Driver] ('https://chromedriver.chromium.org') ➝ [Capabilities] ('https://chromedriver.chromium.org/')
* [Capybara] ('https://github.com/teamcapybara/capybara')
* [Ruby Faker] ('https://github.com/faker-ruby/faker')
* [Site Prism] ('https://github.com/site-prism/site_prism')
* [Reports Cucumber] ('https://cucumber.io/docs/cucumber/reporting/?lang=java')
* [Automação em BDD] ('https://automationpanda.com/bdd/')
* [Git] ('https://git-scm.com/e')

## Sites que Podem te Ajudar ##

<a href="https://carlos-augusto-roque.medium.com/clonagem-de-repositório-no-github-como-clonar-apenas-uma-pasta-ou-um-arquivo-de-um-repositório-9baaad5ea3d8#:~:text=Execute%20o%20comando%20%3A%20git%20checkout,apenas%20a%20pasta%20“pages”.">Como clonar um diretório no GitHub</a>
<br>
<a href = "https://www.youtube.com/watch?v=UBAX-13g8OM">Como usar git e github</a>
