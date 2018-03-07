# Um funcionario tem um atributo chamado "status", que
# pode ser: "ativo" (faz parte do quadro) ou "inativo" (nao faz parte do quadro).
class Funcionario
  attr_reader :nome, :cpf, :status

  # no initialize, vamos receber apenas "nome" e "cpf",
  # pois queremos que SEMPRE que criar um objeto dessa classe,
  # que o valor do status seja inicialmente "ativo".
  def initialize(nome, cpf)
    @nome = nome
    @cpf = cpf
    @status = 'ativo'
  end
end

# nao precisamos mandar o "status" como argumento, pois sempre que criar um
# novo funcionario, ele já está ativo por padrão.
funcionario_1 = Funcionario.new('Leandro', 123)

# Funcionario: Leandro está ativo
puts "Funcionario: #{funcionario_1.nome} está #{funcionario_1.status}"

# No caso do funcionário ser demitido, como fazemos pra deixá-lo "inativo"?
# Precisamos, de alguma forma, MUDAR o atributo "status". Como o Ruby não permite
# manipular o atributo diretamente (só através de métodos), então temos
# de criar um método (na class Funcionario) que receba o novo status
# como parâmetro e mude o valor do atributo:
#
# def muda_status(novo_status)
#   @status = novo_status
# end
#
# Crie o método acima na classe Funcionario. Depois modifique abaixo o status do funcionario
# e imprima o novo status (como está na linha 21) no screen:
#
# funcionario_1.muda_status('inativo') # demitiram o Leandro, coitado...
#
# A linha abaixo, se estiver descomentada, deve imprimir: Funcionario: Leandro está inativo
# puts "Funcionario: #{funcionario_1.nome} está #{funcionario_1.status}"
