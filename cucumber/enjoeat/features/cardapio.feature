#language: pt

Funcionalidade: Cardapio
    Para que eu possa decidir o que pretendo comer
    Sendo um usuario que escolheu um restaurante
    posso acessar o cardapio

    @cardapio
    Cenario: Produto

        Dado que acesso a lista de restaurante
        Quando eu escolho o restaurante "Burger House"
        Entao vejo os seguintes itens disponiveis no cardapio:
             | produto        | descricao                       | preco    | 
             | Classic Burger | O clássico. Não tem como errar. | R$ 18,50 | 
             | Batatas Fritas | Batatas fritas crocantes        | R$ 5,50  | 
             | Refrigerante   | O refri mais gelado da cidade.  | R$ 4,50  | 
                                                                                