Dado('que acesse a home') do
    @google_home = GoogleHome.new
    @google_home.load
  end
  
  Então('deverá exibir o logo da Google') do
    expect(@google_home).to have_css '.lnXdpd'
  end

  Quando('buscar por {string}') do |termo|
    @google_home.search_for(termo)
    @google_results = GoogleResults.new
  end
  
  Então('deverão ser encontrados resultados') do
    expect(@google_results).to have_content  'Jeep Compass'
  end

  #está funcionando, ele está entrando com compass mas 
  # ao clicar ele vai em 'comprimir pdf' não sei se é o corretor
  #algum ajuste do teclado, ou se ele clica em alguma opção
  #geralmente esse teste funciona