# Banco Dinossauro
# - O saldo sempre começa com 0 (zero)
# - Cada depósito é somado ao saldo atual
# - Cada saque é subtraído do saldo atual
# - O extrato mostra o saldo atual
# - Sair do menu deve fechar o programa

     

#A partir daqui, vamos elaborar uma série de exercícios incrementais e numerados.
# Os dois primeiros exercícios abaixo já estão feitos e servem
# como base para os próximos exercícios.


# 1 - Imprimir no screen a mensagem 'Escolha uma opção' (use o print ao inves do puts)
time = Time.now

# 2 - Receber do gets a opção digitada e converter para inteiro, atribuind o resultado na variável opcao.

def chama_menu
  puts '====== BANCO DINOSSAURO ======'
  puts '## Menu ##'
  puts '#1 - Depósito'
  puts '#2 - Saque'
  puts '#3 - Extrato'
  puts '#0 - Sair'
  puts
  
  print 'Escolha uma opção: '
  gets.to_i
end

# 3 - Inicializar a variável 'saldo' com 0. Todo saldo começa com zero.

saldo = 0
opcao = chama_menu
movimentos = []
# 4 Colocar menu em loop, para fazer com que a opção "0" saia do programa

while opcao != 0 do
  if opcao == 1
    print 'Valor do depósito: '    
    deposito = gets.to_i
    saldo = saldo + deposito
    movimentos << "Depósito realizado de: #{deposito}"
    
  elsif opcao == 3
    puts movimentos
    puts "Seu saldo atual é de: #{saldo}"
  elsif opcao == 2
    print 'Valor do saque: '
    saque = gets.to_i
    movimentos << "Saque realizado de: #{saque}"

    if saldo < saque
      puts 'Valor insuficiente'
    else
      saldo = saldo - saque
    end
  end

    


  opcao = chama_menu
  
    
  # 5 - Mostrar o menu, com os prints/puts igual está lá em cima, e no final, atribuir à
  # variável "opcao" o valor do gets (o gets tem que estar por ultimo dentro do while

end

  # 6 criar um método para simplificar a chamada do menu para evitar codigo duiplicado (*codigo no topo*)



  puts "Até logo"

