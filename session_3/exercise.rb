# Banco Dinossauro
# - O saldo sempre começa com 0 (zero)
# - Cada depósito é somado ao saldo atual
# - Cada saque é subtraído do saldo atual
# - O extrato mostra o saldo atual
# - Sair do menu deve fechar o programa

puts '====== BANCO DINOSSAURO ======'
puts '## Menu ##'
puts '#1 - Depósito'
puts '#2 - Saque'
puts '#3 - Extrato'
puts '#0 - Sair'
puts






#A partir daqui, vamos elaborar uma série de exercícios incrementais e numerados.
# Os dois primeiros exercícios abaixo já estão feitos e servem
# como base para os próximos exercícios.

# 1 - Imprimir no screen a mensagem 'Escolha uma opção' (use o print ao inves do puts)
print('Escolha uma opção: ')

# 2 - Receber do gets a opção digitada e converter para inteiro, atribuindo
# o resultado na variável opcao.
opcao = gets.to_i

# 3 - Inicializar a variável 'saldo' com 0. Todo saldo começa com zero.

saldo = 0

# 4 Colocar menu em loop, para fazer com que a opção "0" saia do programa

while opcao != 0 do
  puts '====== BANCO DINOSSAURO ======'
  puts '## Menu ##'
  puts '#1 - Depósito'
  puts '#2 - Saque'
  puts '#3 - Extrato'
  puts '#0 - Sair'
  puts
  opcao = gets.to_i  

  # 5 - Mostrar o menu, com os prints/puts igual está lá em cima, e no final, atribuir à
  # variável "opcao" o valor do gets (o gets tem que estar por ultimo dentro do while

end

  puts "Até logo"

