# You can implement step definitions for undefined steps with these snippets:
# tempo video 21,31


Dado("que tenho uma lista de restaurantes") do

    @restaurant_data =[
        {name: 'Bread & Bakery', category: 'Padaria', delivery_time: '25 minutos', rating: 4.9},
        {name: 'Burger Hause', category: 'Hamburgers', delivery_time: '30 minutos', rating: 3.5}
        ]
    
  end


Quando("acesso a lista de restaurantes") do
    visit '/restaurants'

   
end

Então("vejo todas as opções disponíveis") do
    
    restaurante = all('.restaurant-item') # metodo all devolve coleção de elementos
    expect(restaurante.size).to be > 0
    # expect(restaurante.size).to eql 6
        # puts restaurante.size
        # puts restaurante.class
   
end

Então("cada restaurante deve exibir sua categoria") do
    
    #massa de dados
    

        restaurants = all('.restaurant-item')

        # restaurant_data.each do |value|
        @restaurant_data.each_with_index  do |value, index|
            # puts value[:category]
            # puts restaurants[index].text
            expect(restaurants[index]).to have_text value[:category]

        end


end

Então("cada restaurante deve exibir o tempo de entrega") do
      
    


        restaurants = all('.restaurant-item')

        # restaurant_data.each do |value|
        @restaurant_data.each_with_index  do |value, index|
            # puts value[:category]
            # puts restaurants[index].text
            expect(restaurants[index]).to have_text value[:delivery_time]

        end



end

Então("cada restaurante deve exibir sua nota de avaliação") do
    

        restaurants = all('.restaurant-item')

        # restaurant_data.each do |value|
        @restaurant_data.each_with_index  do |value, index|
            # puts value[:category]
            # puts restaurants[index].text
            expect(restaurants[index]).to have_text value[:rating]

        end

end