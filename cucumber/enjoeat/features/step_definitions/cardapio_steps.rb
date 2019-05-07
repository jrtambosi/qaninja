Dado("que acesso a lista de restaurante") do
    
    visit"/restaurants"
end

Quando("eu acesso um restaurante {string}") do |restaurante|
    
    find(".restaurant-item", text: restaurante.upcase).click


end

Entao("vejo os seguintes itens disponiveis no cardapio:") do |table|
    
    itens = all('.menu-item-info-box')

    product_data = table.hashes

    product_data.each_with_index do |value,index|
        expect(items[index]).to have_text value ['produto']
        expect(items[index]).to have_text value ['descricao']
        expect(items[index]).to have_text value ['preco']
    end
end