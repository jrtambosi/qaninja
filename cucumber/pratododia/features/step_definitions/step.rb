
module Enjoeat

        def prato_do_dia(dia)

           if dia == 'segunda-feira'
                'Virado a Paulista'
           end
        end

end

World Enjoeat




Dado("que hooje e segunda-feira") do
    @hoje = 'segunda-feira'
  end
  
  Quando("eu pergunto qual o prato do dia") do
    
   @respostarecebida = prato_do_dia(@hoje)

  end
  
  Entao("a resposta deve ser {string}") do |resposta_esperada|
    
    expect(@respostarecebida).to eql resposta_esperada

  end