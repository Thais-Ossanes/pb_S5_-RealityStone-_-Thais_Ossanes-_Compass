
#depois de rodar um cenário e descobrir se ele está falhando
#After do|teste|
#end

Before do #|scenario|
    puts "estou executando antes de cada cenário"
end

After do |scenario|
    puts "executar depois do cenário"
    puts scenario.failed? 
end

#estratégia para tirar skillshot seleção;
#After('@limpar_banco')do
    #puts 'EXECUTANDO DEPOIS DO CENÁRIO  carregar página do Google CENÁRIO"
#end 
#colocar a @limpar_banco antes do cenário escolhido para testar .feature