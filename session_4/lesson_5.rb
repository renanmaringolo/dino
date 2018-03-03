# Banco Dinossauro

def login
  puts '====== BANCO DINOSSAURO ======'
  print 'Digite seu email: '
  email = gets.strip

  print 'Digite seu nome: '
  nome = gets.strip

  print 'CPF: '
  cpf = gets.strip

  print 'RG: '
  rg = gets.strip

  # receita dos dados da pessoa
  # propriedades: nome, email, cpf e rg
  "#{nome}|#{email}|#{cpf}|#{rg}"
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

# Renan|renan@gmail|12345|0999
dados_da_pessoa = login # instanciou um "objeto" da receita

opcao = chama_menu
movimentos = []
saques = []
depositos = []

while opcao != 0 do
  if opcao == 1
    print 'Valor do depósito: '
    deposito = gets.to_i
    depositos << deposito
    movimentos << "Depósito realizado de: #{deposito}"
  elsif opcao == 2
    saldo = calcula_saldo(depositos, saques)
    print 'Valor do saque: '
    saque = gets.to_i

    if saldo < saque
      puts 'Valor insuficiente'
    else
      saques << saque
      movimentos << "Saque realizado de: #{saque}"
    end
  elsif opcao == 3
    saldo = calcula_saldo(depositos, saques)
    puts movimentos
    puts "Seu saldo atual é de: #{saldo}"
  end

  opcao = chama_menu
end

dados = dados_da_pessoa.split('|') # array
nome = dados[0]

puts "Obrigado #{nome} por contratar nossos serviços. Dinossauro Bank S/A"
