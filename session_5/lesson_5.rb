class Banco
  attr_reader :nome
  attr_writer :clientes

  def initialize(nome, cnpj, clientes)
    @nome = nome
    @cnpj = cnpj
    @clientes = clientes
  end

  def imprime_clientes
    @clientes.each do |cliente|
      puts "Nome: #{cliente.nome}"
      puts "CPF: #{cliente.cpf}"
      puts "RG: #{cliente.rg}"
      puts "Cidade: #{cliente.cidade}"
      puts "Estado Civil: #{cliente.estado_civil}"
      puts "========================== "
      # imprimir mais atirbutos do cliente. CLIENTE!!!
    end
  end
end

class Cliente
  attr_reader :nome, :cpf, :rg, :cidade, :estado_civil

  def initialize(nome, cpf, rg, cidade, estado_civil)
    # receber outros atributos: rg, etc
    @nome = nome
    @cpf = cpf
    @rg = rg
    @cidade = cidade
    @estado_civil = estado_civil
  end
end

cliente_1 = Cliente.new('Renan', 123, 999, 'brasília', 'solteiro')
cliente_2 = Cliente.new('Leandro', 456, 777, 'SP', 'casado')
cliente_3 = Cliente.new('Mara', 789, 555, 'rj', 'divorciada')

clientes = [cliente_1, cliente_2, cliente_3]

banco = Banco.new('Itau', 999, clientes)

puts "Clientes do banco #{banco.nome}: "
banco.imprime_clientes

# O Leandro deixou de ser cliente
banco.clientes = [cliente_1, cliente_3]
puts "Depois do Leandro sair..."
puts

banco.imprime_clientes

# A Mara deixou de ser cliente mas o Leandro voltou
banco.clientes = [cliente_1, cliente_2]
puts "Depois da Mara sair..."
puts

banco.imprime_clientes
