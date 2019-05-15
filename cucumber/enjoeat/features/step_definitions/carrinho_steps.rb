Dado("que  o produto desejado é {string}") do |produto|
    @produto_nome = produto
  end
  
  Dado("o valor do produto é de {string}") do |valor|
   @pruduto_valor = valor
  end
  
  Quando("eu adiciono {int} unidade\\(s)") do |quantidade|
    quantidade.times do
    find('.menu-item-info-box',text: @produto_nome.upcase).find('.add-to-cart').click
    sleep 5
    end
  end
  
  Entao("deve ser adicionado {int} unidade\\(s) deste item") do |quantidade|

    cart = find('#shopping-cart')
    expect(cart).to have_text "(#{quantidade}x) #{@produto_nome}"
    
  end
  
  Entao("o valor total deve ser de {string}") do |valor_total|
    cart = find('#shopping-cart')
    total = cart.find("tr", text: "Total:").find("td")
    expect(cart).to have_text valor_total
    puts total.text
    puts valor_total  

  end