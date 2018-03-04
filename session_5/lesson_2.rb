# Orientacao a Objetos

# "Classe"
#def cria_banco(nome, cnpj, clientes)
#  # propriedades, atributos...
#  { nome: nome, cnpj: cnpj, clientes: clientes }
#end

# Objeto
# banco = cria_banco('Itau', 333, [])

# RECEITA
# def cria_banco => Banco
class Banco
  def initialize(nome, cnpj, clientes)
    @nome = nome
    @cnpj = cnpj
    @clientes = clientes
  end

  def nome
    @nome
  end

  def cnpj
    @cnpj
  end

  def clientes
    @clientes
  end

  def imprime_clientes
    @clientes.each do |cliente|
      puts "Nome: #{cliente.nome}"
      # imprimir mais atirbutos do cliente. CLIENTE!!!
    end
  end
end

class Cliente
  def initialize(nome, cpf)
    # receber outros atributos: rg, etc
    @nome = nome
    @cpf = cpf
  end

  def nome
    @nome
  end

  def cpf
    @cpf
  end
end

# adicionar mais argumentos: rg, cidade, etc
cliente_1 = Cliente.new('Renan', 123)
cliente_2 = Cliente.new('Leandro', 456)
cliente_3 = Cliente.new('Mara', 789)

#clientes = []
#clientes << cliente_1
#clientes << cliente_1
#clientes << cliente_1

clientes = [cliente_1, cliente_2, cliente_3]

banco = Banco.new('Itau', 999, clientes)

# Clientes do banco Itau
puts "Clientes do banco #{banco.nome}: "
banco.imprime_clientes

# RESULTADO NO SCREEN: Nome, CPF, RG, Cidade, Estado Civil
