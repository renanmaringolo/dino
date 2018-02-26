# de acordo com o lesson_1.rb e lesson_2.rb, nossos movimentos de saques
# têm duas propriedades, uma é o valor do saque e outra é a data do saque.
# imaginemos que agora precisamos adicionar outra propriedade, por exemplo,
# o identificador do caixa eletrônico. cada caixa eletrônico pode ter um identificador
# diferente, assim os sistemas centrais do banco sabem, ao analisar o volume
# de transações, "onde" foram efetuados os saques e assim podem identificar
# possíveis caixas eletrônicos fraudados, entre outras coisas.

saque = 200
data = '26/02/2018 às 10:42'
identificador = '9X0B4T'

# 200|26/02/2018 às 10:42|9X0B4T
movimento_saque = "#{saque}|#{data}|#{identificador}"

# com isso, sabemos que a quantidade de "propriedades" que podemos adicionar na nossa
# string de movimento é infinita:

movimento_saque = "#{saque}|#{data}|#{identificador}|dinossauro|outra_propriedade|qualquer_coisa_aqui|escreve mais"

# assim, ao fazer o split, devemos sempre saber de antemão, as posições corretas das propriedades:
valores = movimento_saque.split('|')

puts valores.size # tamanho da lista de valores é 7

puts valores[0] # 200
puts valores[1] # 26/02/2018 às 10:42
puts valores[2] # 9X0B4T
puts valores[3] # dinossauro
puts valores[4] # outra_propriedade
puts valores[5] # qualquer_coisa_aqui
puts valores[6] # escreve mais

# zuera never ends...
puts valores[7] # nil (acabou né, campeão? tem mais nada aqui)
puts valores[8] # nil (ainda insistindo? a lista tem 7 elementos apenas!)
puts valores[9] # nil (desiste...)

# execute este arquivo. o resultado no screen deve ser:
# 200
# 26/02/2018 às 10:42
# 9X0B4T
# dinossauro
# outra_propriedade
# qualquer_coisa_aqui
# escreve mais
#
#
#
