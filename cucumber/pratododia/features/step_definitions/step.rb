
module Enjoeat

        def prato_do_dia(dia)
           if dia == 'segunda-feira'
                'Virado a Paulista'
           elsif dia == 'terca-feira' 
                'dobradinhaPaulista'
           end
        end

end
World Enjoeat

Dado("que hoje e segunda-feira") do
    @hoje = 'segunda-feira'
end
Dado("que hoje e terca-feira") do
    @hoje = 'terca-feira'
end

Quando("eu pergunto qual o prato do dia") do
   @resposta_obtida = prato_do_dia(@hoje)
end
Entao("a resposta deve ser {string}") do |resposta_esperada|
    expect(@resposta_obtida).to eql resposta_esperada
end