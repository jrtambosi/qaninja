# You can implement step definitions for undefined steps with these snippets:
# tempo video 21,31

Quando("acesso a lista de restaurantes") do
    visit '/restaurants'
end

Então("vejo todas as opções disponíveis") do
    
    restaurante = all('.restaurant-item') # metodo all devolve coleção de elementos
    expect(restaurante.size).to be > 0
        # puts restaurante.size
        # puts restaurante.class
   
end

Então("cada restaurante deve exibir sua categoria") do
     pending # Write code here that turns the phrase above into concrete actions
end

Então("cada restaurante deve exibir o tempo de entrega") do
      pending # Write code here that turns the phrase above into concrete actions
end

Então("cada restaurante deve exibir sua nota de avaliação") do
      pending # Write code here that turns the phrase above into concrete actions
end