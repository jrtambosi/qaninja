Dado("que  o produto desejado é {string}") do |produto|
    @produto_nome = produto
  end
  
  Dado("o valor do produto é de {string}") do |valor|
   @pruduto_valor = valor
  end
  
  Quando("eu adiciono {int} unindade deste item") do |int|
    find('.menu-item-info-box',text: @produto_nome.upcase).find('.add-to-cart').click
    sleep 5
    
  end
  
  Entao("deve ser adicionado {int} unidade deste item") do |quantidade|
    cart = find('#shopping-cart')
    expect(cart).to have_text "(#{quantidade}x) #{@produto_nome}"
    
  end
  
  Entao("o valor total deve ser de {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end