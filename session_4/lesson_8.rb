# Banco Dinossauro

# RECEITA
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

  print 'Cidade: '
  cidade = gets.strip
  
  print 'estado_civil: '
  estado_civil = gets.strip

  # MUDAR AQUI
  # receita dos dados da pessoa
  # propriedades: nome, email, cpf e rg
  { nome: nome, email: email, cpf: cpf, rg: rg, cidade: cidade, estado_civil: estado_civil } 
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

# BOLO
# MUDAR AQUI TBM
# Renan|renan@gmail|12345|0999 VAI DEIXAR DE SER ASSIM!

cadastros = []

dados_da_pessoa_1 = login # produziu um "bolo" da receita
dados_da_pessoa_2 = login
dados_da_pessoa_3 = login
dados_da_pessoa_4 = login

cadastros << dados_da_pessoa_1
cadastros << dados_da_pessoa_2
cadastros << dados_da_pessoa_3
cadastros << dados_da_pessoa_4

identificador = '3BN98FDS'
data = Time.now
opcao = chama_menu
movimentos = []
saques = []
depositos = []

while opcao != 0 do
  if opcao == 1
    print 'Valor do depósito: '
    deposito = gets.to_i
    depositos << deposito
    movimentos << "Depósito realizado de: #{deposito}, às #{data}, no terminal: #{identificador}"
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
      movimentos << "Saque realizado de: #{saque}, às #{data}, no terminal: #{identificador}"
    end
  elsif opcao == 3
    saldo = calcula_saldo(depositos, saques)
    puts movimentos
    puts "Seu saldo atual é de: #{saldo}"
  end

  opcao = chama_menu
end

# MUDAR A PARTIR DAQUI
cadastros.each do |dados| # array
  nome = dados[:nome]
  puts "Nome: #{nome}"
  rg = dados[:rg]
  puts "RG: #{rg}"

  puts "Sessão encerrada às #{data}, obrigado, #{nome}, por confiar no Dino Bank S/A"

end 

# fique a vontade pra mudar aqui, colocar mais "propriedades" dos dados_da_pessoa
