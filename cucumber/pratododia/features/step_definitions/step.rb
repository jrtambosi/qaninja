
module Enjoeat

        def prato_do_dia(dia)
           if dia == 'segunda-feira'
                'viradoPaulista'
           elsif dia == 'terca-feira' 
                'dobradinhaPaulista'
           elsif dia == 'quarta-feira'
                'feijoada'
           elsif dia == 'quinta-feira'
                'macarronada'
           elsif dia == 'sexta-feira'
                'peixe'
           elsif dia == 'sabado'
                'vejaCardapio'
           elsif dia == 'domingo'
                'fechado'
           else
                'dia invalido'
           end
        end

end
World Enjoeat

Dado("que hoje e {string}") do |dia|
 @hoje = dia
end

Dado("que hoje e segunda-feira") do
    @hoje = 'segunda-feira'
end
Dado("que hoje e terca-feira") do
    @hoje = 'terca-feira'
end

Quando("eu pergunto qual e o prato do dia") do
   @resposta_obtida = prato_do_dia(@hoje)
end
Entao("a respota deve ser {string}") do |resposta_esperada|
    expect(@resposta_obtida).to eql resposta_esperada
end