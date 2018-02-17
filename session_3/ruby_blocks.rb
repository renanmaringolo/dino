#print 'Entrada: '
#entrada = gets.strip
#
#print 'Operacao: '
#operacao = gets.strip

entrada  = '8 2 1'
operacao = '*'

entradas = entrada.split(' ')
notas = []

for e in entradas
  notas << e.to_i
end

### Exemplo 1 ###

puts 'Exemplo 1'

if operacao == '+'
  resultado = 0
elsif operacao == '*'
  resultado = 1
else
  puts "Operacao #{operacao} nao permitida"
  exit
end

for nota in notas
  if operacao == '+'
    resultado = resultado + nota
  else
    resultado = resultado * nota
  end
end

if operacao == '+'
  puts "A soma eh: #{resultado}"
else
  puts "O produto eh: #{resultado}"
end

### Exemplo 2 ###

puts 'Exemplo 2'

if operacao == '+'
  resultado = 0

  for nota in notas
    resultado = resultado + nota
  end

  puts "A soma eh: #{resultado}"
else
  resultado = 1

  for nota in notas
    resultado = resultado * nota
  end

  puts "O produto eh: #{resultado}"
end

### Exemplo 3 ###

puts 'Exemplo 3'

if operacao == '+'
  acumulador = 0
  calculo = lambda { |acc, nota| acc + nota }
  imprime = lambda { |result| puts("A soma eh: #{result}") }
else
  acumulador = 1
  calculo = lambda { |acc, nota| acc * nota }
  imprime = lambda { |result| puts("O produto eh: #{result}") }
end

for nota in notas
  acumulador = calculo.call(acumulador, nota)
end

imprime.call(acumulador)

### Exemplo 4 ###

puts 'Exemplo 4'

def realiza_calculo(notas, acumulador, &calculo)
  for nota in notas
    acumulador = calculo.call(acumulador, nota)
  end

  acumulador
end

if operacao == '+'
  calculo = lambda { |acc, nota| acc + nota }
  resultado = realiza_calculo(notas, 0, &calculo)
  puts "A soma eh: #{resultado}"
else
  calculo = lambda { |acc, nota| acc * nota }
  resultado = realiza_calculo(notas, 1, &calculo)
  puts "O produto eh: #{resultado}"
end

### Exemplo 5 ###

puts 'Exemplo 5'

def realiza_calculo(notas, acumulador, &calculo)
  for nota in notas
    acumulador = calculo.call(acumulador, nota)
  end

  acumulador
end

if operacao == '+'
  resultado = realiza_calculo(notas, 0) do |acumulador, nota|
    acumulador + nota
  end

  puts "A soma eh: #{resultado}"
else
  resultado = realiza_calculo(notas, 1) do |acumulador, nota|
    acumulador * nota
  end

  puts "O produto eh: #{resultado}"
end

### Exemplo 6 ###

puts 'Exemplo 6'

def realiza_calculo(notas, acumulador)
  for nota in notas
    acumulador = yield(acumulador, nota)
  end

  acumulador
end

if operacao == '+'
  resultado = realiza_calculo(notas, 0) do |acumulador, nota|
    acumulador + nota
  end

  puts "A soma eh: #{resultado}"
else
  resultado = realiza_calculo(notas, 1) do |acumulador, nota|
    acumulador * nota
  end

  puts "O produto eh: #{resultado}"
end

### Exemplo 7 ###

puts 'Exemplo 7'

def realiza_calculo(notas, acumulador)
  for nota in notas
    acumulador = yield(acumulador, nota)
  end
  acumulador
end

if operacao == '+'
  resultado = realiza_calculo(notas, 0) { |acc, nota| acc + nota }
  puts "A soma eh: #{resultado}"
else
  resultado = realiza_calculo(notas, 1) { |acc, nota| acc * nota }
  puts "O produto eh: #{resultado}"
end

### Exemplo 8 ###

puts 'Exemplo 8'

def pra_cada_elemento(lista)
  for elemento in lista
    yield(elemento)
  end
end

pra_cada_elemento(notas) do |elemento|
  puts "Numero: #{elemento}"
end
