

Dado('que acesse a home') do
    #variável de instância que pode ser chamada em outros steps, '@'
    @home_page = Home.new
    @home_page.load
end
  
Então('deverá exibir o logo da Google') do
    expect(@home_page).to have_logo
    #teste:  expect(@home_page).noy_to have_logo 'espero que a minha home page não tenha um logo'
end
  