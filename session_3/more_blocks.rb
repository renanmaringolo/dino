def pra_cada_elemento(lista)
  for elemento in lista
    yield(elemento)
  end
end

# Uso 1
pra_cada_elemento(['Leandro', 'Renan']) do |elem|
  puts "Ola, #{elem}"
end

# Uso 2
soma = 0

pra_cada_elemento([1, 2, 4]) do |numero|
  soma = soma + numero
end

puts "A Soma eh #{soma}"

# Uso 3
produto = 1

pra_cada_elemento([1, 2, 4]) do |numero|
  produto = produto * numero
end

puts "O produto eh: #{produto}"

# Uso 4
tamanho = 0

pra_cada_elemento([2, 3, 6, 7, 8, 3, 1]) do |numero|
  tamanho = tamanho + 1
end

puts "Tamanho da lista eh: #{tamanho}"

#### EACH ####

['Leandro', 'Renan'].each do |elem|
  puts "Ola, #{elem}"
end

nomes = ['Leandro', 'Renan']
nomes.each { |nome| puts("Ola com EACH, #{nome}") }

# Soma

notas = [3, 5, 2]
soma = 0

notas.each { |nota| soma = soma + nota }
puts "Soma com EACH: #{soma}"

def realiza_calculo(lista, acumulador)
  for elemento in lista
    acumulador = yield(acumulador, elemento)
  end

  acumulador
end

soma = realiza_calculo(notas, 0) { |acc, nota| acc + nota }
puts "Soma LIKE A BOSS: #{soma}"

#### INJECT ####

soma = [1, 2, 3, 4, 5].inject(0) { |acc, nota| acc + nota }
puts "CARALHO DE SOMA: #{soma}"

produto = [1, 2, 3, 4, 5].inject(1) { |acc, nota| acc * nota }
puts "CARALHO DE PRODUTO: #{produto}"

puts "SOMA DAS NOTAS #{notas.inject(&:+)}"
