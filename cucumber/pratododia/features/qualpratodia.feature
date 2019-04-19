#language:pt

Funcionalidade: Qual e o prato do dia
   queremos saber qual o prato na capital paulista

   # Cenario: Hoje e dia de virado a paulista

   #    Dado que hoje e "segunda-feira"
   #    Quando eu pergunto qual o prato do dia
   #    Entao a resposta deve ser "Virado a Paulista"

   # Cenario: Hoje e dia de dobradinha

   # Dado que hoje e "terca-feira"
   # Quando eu pergunto qual o prato do dia
   # Entao a resposta deve ser "dobradinhaPaulista"

   # Cenario: Hoje e dia de feijoada 

   # Dado que hoje e "quarta-feira"
   # Quando eu pergunto qual o prato do dia
   # Entao a resposta deve ser "feijoada"

   Esquema do Cenario: Prato do dia

   Dado que hoje e <dia>
   Quando eu pergunto qual e o prato do dia
   Entao a respota deve ser <resposta>

   Exemplos:
   | dia             | resposta            |
   | "segunda-feira" | "viradoPaulista"    |
   | "terca-feira"   | "dobradinhaPaulista"|
   | "quarta-feira"  | "feijoada"          |
   | "quinta-feira"  | "macarronada"       |
   | "sexta-feira"   | "peixe"             |
   | "sabado"        | "vejaCardapio"     |
   | "domingo"       | "fechado"           |
   | "xpto"          |  "dia invalido"              |





    