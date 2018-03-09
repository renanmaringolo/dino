class Funcionario
  attr_reader :nome, :cpf, :status
  attr_writer :status

  def initialize(nome, cpf)
    @nome = nome
    @cpf = cpf
    @status = 'ativo'
  end
end

funcionario_1 = Funcionario.new('Leandro', 123)

puts "Funcionario: #{funcionario_1.nome} está #{funcionario_1.status}"

# variavel = valor => atribuicao de valor
funcionario_1.status = 'inativo' # chamada de metodo

# Mais exemplos:
# a = 1 # atribuicao de valor na variavel a
# objeto.a = 1 # metodo objeto.a=(1)

puts "Funcionario: #{funcionario_1.nome} está #{funcionario_1.status}"
