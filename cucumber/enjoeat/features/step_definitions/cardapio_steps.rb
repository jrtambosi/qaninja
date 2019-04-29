Dado("que acesso a lista de restaurante") do
    
    visit"/restaurants"
end

Quando("eu acesso um restaurante {string}") do |restaurante|
    
    find(".restaurant-item", text: restaurante.upcase).click


end

Entao("vejo os seguintes itens disponiveis no cardapio:") do |table|
    
end