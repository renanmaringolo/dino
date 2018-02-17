print 'Digite as notas separadas por espaco: '
entrada = gets.strip

print 'Operacao: '
operacao = gets.strip

# + ou soma
# * ou produto

if operacao != '+' && operacao != '*' && operacao != 'soma' && operacao != 'produto'
  puts "Operacao invalida: #{operacao}. Saindo de mansinho..."
  exit
end

entradas = entrada.split
notas = []

for entrada in entradas
  notas << entrada.to_i
end

def realiza_calculo(notas, acumulador)
  for nota in notas
    acumulador = yield(acumulador, nota)
  end

  acumulador
end

if operacao == '+' || operacao == 'soma'
  resultado = realiza_calculo(notas, 0) { |acc, nota| acc + nota }
  puts "A soma eh: #{resultado}"
else
  resultado = realiza_calculo(notas, 1) { |acc, nota| acc * nota }
  puts "O produto eh: #{resultado}"
end
