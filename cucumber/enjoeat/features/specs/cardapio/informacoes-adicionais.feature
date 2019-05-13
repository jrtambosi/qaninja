#language: pt

Funcionalidade: Infomacoes adicionais
    para que eu possa ver as informacoes adicionais sendo um usuario que escolheu um restaurante
    posso ver a caegoria descrição detalhada e horario de funcionamento
    
    @infos
    Cenario: Dado que acesso a lista de restaurante
        Dado que acesso a lista de restaurante   
        Quando eu escolho o restaurante "Burger House"
        Entao eu vejo as seguintes informaçoes adicionais:
             | categoria | Hamburgers                             |
             | descricao | 40 anos se especializando em trash food |
             | horarios  | Funciona todos os dias, de 10h às 22h    | 
             