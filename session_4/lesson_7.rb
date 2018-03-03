# RECEITA
def criar_pessoa
  print 'Digite seu email: '
  email = gets.strip

  print 'Digite seu nome: '
  nome = gets.strip

  print 'CPF: '
  cpf = gets.strip

  print 'RG: '
  rg = gets.strip

  puts '=========='

  # propriedades: nome, email, cpf e rg
  # Hash
  { nome: nome, email: email, cpf: cpf, rg: rg }
end

pessoas = []

# BOLO
dados_da_pessoa_1 = criar_pessoa

# OUTRO BOLO, MAS A RECEITA EH A MESMA (login)
dados_da_pessoa_2 = criar_pessoa

# OUTRO BOLO, MAS A RECEITA EH A MESMA (login)
dados_da_pessoa_3 = criar_pessoa
# renan@gmail|12345|999|Renan

pessoas << dados_da_pessoa_1
pessoas << dados_da_pessoa_2
pessoas << dados_da_pessoa_3

# imprimir apenas os nomes de todas as pessoas
#pessoas.each do |dados_da_pessoa| # email|cpf|rg|nome STRING
pessoas.each do |dados_da_pessoa| # { email: email ... } HASH
  # dados_da_pessoa é uma HASH { email: email, rg: rg ... }
  nome = dados_da_pessoa[:nome]
  puts "Nome => #{nome}"
  rg = dados_da_pessoa[:rg]
  puts "RG => #{rg}"
  puts "========"
end

# "A PARTIR DE UMA RECEITA, SE PRODUZ VARIOS BOLOS"
