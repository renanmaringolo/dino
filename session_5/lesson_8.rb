# Banco Dinossauro

class Cliente

  attr_accessor :nome, :cpf, :rg, :data_nascimento, :email, :cidade
  
  def initialize(nome, cpf, rg, data_nascimento, email, cidade) 
    @nome = nome
    @cpf = cpf
    @rg = rg
    @data_nascimento = data_nascimento
    @email = email
    @cidade = cidade
  end
end
  

def login
  puts '====== BANCO DINOSSAURO ======'

  print 'Digite seu nome: '
  nome = gets.strip

  print 'CPF: '
  cpf = gets.strip

  print 'RG: '
  rg = gets.strip
  
  print 'Data de nascimento: '
  data_nascimento = gets.strip  
  
  print 'Digite seu email: '
  email = gets.strip

  print 'Cidade: '
  cidade = gets.strip

Cliente.new(nome, cpf, rg, data_nascimento, email, cidade)

end



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

def calcula_saldo(depositos, saques)
  ### Inject
  soma_depositos = depositos.inject(0) { |acc, deposito| acc + deposito }
  soma_saques = saques.inject(0) { |acc, saque| acc + saque }

  soma_depositos - soma_saques
end

cliente = login # produziu um "bolo" da receita (objeto)
#cliente.nome
#cliente.cpf
#cliente.rg
#cliente.data_nascimento
#cliente.email
#cliente.cidade

identificador = '3BN98FDS'
opcao = chama_menu
movimentos = []
saques = []
depositos = []

while opcao != 0 do
  if opcao == 1
    print 'Valor do depósito: '
    deposito = gets.to_i
    depositos << deposito
    movimentos << "Depósito realizado de: #{deposito}, às #{Time.now}, no terminal: #{identificador}"
  elsif opcao == 2
    saldo = calcula_saldo(depositos, saques)
    print 'Valor do saque: '
    saque = gets.to_i

    if saldo < saque
      puts 'Valor insuficiente'
    else
      saques << saque
      # fique a vontade pra interpolar com as propriedades do "bolo"
      # ou nao, vc que sabe...
      movimentos << "Saque realizado de: #{saque}, às #{Time.now}, no terminal: #{identificador}"
    end
  elsif opcao == 3
    saldo = calcula_saldo(depositos, saques)
    puts movimentos
    puts "Seu saldo atual é de: #{saldo}"
  end

  opcao = chama_menu
end

# MUDAR A PARTIR DAQUI

puts "Sessão encerrada às #{Time.now}, obrigado, #{cliente.nome}, por confiar no Dino Bank S/A" # Ou colocar dir
