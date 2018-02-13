# duas formas de representar strings
puts('Dinossauro com aspas simples')
puts("Dinossauro com aspas duplas")

nome = 'Leandro'

puts('Ola, Leandro')
puts('Ola, ' + 'Leandro')
puts('Ola, ' + nome)
puts("Ola, " + nome + " (com aspas duplas)") # tambem funciona com aspas duplas

puts('Ola, #{nome}')
puts("Ola, #{nome}")

puts('Recomendado aspas simples quando nao precisa interpolar')
puts("Nao recomendado")
puts("Obrigatorio, pois vou interpolar com o nome: #{nome}")
