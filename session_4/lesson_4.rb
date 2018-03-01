# sendo assim, de acordo com as lessons anteriores, faça um exercício para imprimir
# no screen as propriedades de uma string com vários valores separados por pipe (|).
# devem ser mostradas uma embaixo da outra, de acordo com os exercícios.

# implemente o código necessário para fazer com que o resultado no screen seja:
# 400
# 20/03/2018 às 18:56:59
# 1ABC999
# Renan Proença
# active

saque = 400
data = Time.now #tudo bem né? gostei desse método haha
identificador = '1ABC999'
pessoa = 'Renan Proença'
status = 'active'

movimento_saque = "#{saque}|#{data}|#{identificador}|#{pessoa}|#{status}"


valores = movimento_saque.split('|')

puts valores.size


puts valores[0]
puts valores[1]
puts valores[2]
puts valores[3]
puts valores[4]
puts valores[5] # pegadinha do malandro






