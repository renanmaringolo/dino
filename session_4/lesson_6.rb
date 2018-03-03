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
  "#{email}|#{cpf}|#{rg}|#{nome}"
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
pessoas.each do |dados_da_pessoa| # email|cpf|rg|nome STRING
  # dados_da_pessoa é uma STRING "email|cpf|rg|nome"

  # variavel é variavel, variavel nao se transforma
  # split retorna array e ponto final. o retorno do split vc pode jogar
  dados = dados_da_pessoa.split('|') # array [email, cpf, rg, nome]
  nome = dados[0]
  puts "Nome => #{nome}"
end
