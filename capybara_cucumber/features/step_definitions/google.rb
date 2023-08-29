Dado('que acesse a home') do
    visit('https://www.google.com.br/')
  end
  
  Então('deverá exibir o logo da Google') do
    expect(page).to have_css '.lnXdpd'
  end

  Quando('buscar por {string}') do |termo|
    find("textarea[name='q']").set termo
    find(".gNO89b").click
  end
  
  Então('deverão ser encontrados resultados') do
    expect(page).to have_content  'Jeep Compass'
  end

  #está funcionando, ele está entrando com compass mas 
  # ao clicar ele vai em 'comprimir pdf' não sei se é o corretor
  #algum ajuste do teclado, ou se ele clica em alguma opção
  #geralmente esse teste funciona