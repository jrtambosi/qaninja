#language: pt
@bread_bakery
Funcionalidade: remover do carrinho
 Para que eu possa manter meu carrinho com itens desejados


   Cenario: Remover 1 item
        Dado que tenho itens os seguintes itens no carrinho
            |nome                  |preco   |
            |Cup Cake              |R$ 8,70 |
            |Donut                 |R$ 2,50 |
            |Pão Artesanal Italiano|R$ 15,90|
        Quando eu removo somente o  1 item
        Então o valor total deve ser de "R$ 18,40"


    Cenario: Remover todos os itens
        Dado que eu tenho o seguintes itens no carrinho
            |nome                  |preco   |
            |Cup Cake              |R$ 8,70 |
            |Donut                 |R$ 2,50 |
            |Pão Artesanal Italiano|R$ 15,90|
        Quando eu removo todos os itens
        Então vejo a seguinte mensagem no carrinho " Seu carrinho está vazio"


