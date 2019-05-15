#language: pt
@bread_bakery 
Funcionalidade: Adicionar carrinho
   Para que eu possa finalizar uma compra
   Sendo um cliente que ja deciidiu o que desja comer
   Posso adicionar itens ao meu carrinho

   
   Cenario: Adiocionar 1 unindade

        Dado que  o produto desejado é "Cup Cake"
        E o valor do produto é de "R$ 8,70"
        Quando eu adiciono 1 unindade(s)    
        Entao deve ser adicionado 1 unidade(s) deste item
        E o valor total deve ser de "R$ 8,70" 

    @tempo
    Cenario: Adicionar 2 Unidade

        Dado que  o produto desejado é "Donut"
        E o valor do produto é de "2,50"
        Quando eu adiciono 2 unidade(s)
        Entao deve ser adicionado 2 unidade(s) deste item
        E o valor total deve ser de "R$ 5,00"




    Cenario: Adicionar varios Itens

        Dado que os produtos desejados são:
            |nome                  |preco   |
            |Cup Cake              |R$ 8,70 |
            |Donut                 |R$ 2,50 |
            |Pão Artesanal Italiano|R$ 15,90|
        Quando eu adiciono todos os itens
        Entao vejo todos os itens no carrinho
        E o valor total deve ser de "R$ 27,10"



