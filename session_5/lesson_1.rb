# Receitas:
# Cliente (nome, cpf)
# Banco (nome, cnpj, clientes)

def cria_cliente(nome, cpf)
  # propriedades, atributos...
  { nome: nome, cpf: cpf }
end

def cria_banco(nome, cnpj, clientes)
  # propriedades, atributos...
  { nome: nome, cnpj: cnpj, clientes: clientes }
end

clientes = []

# BOLOS DA RECEITA CLIENTE
cliente_1 = cria_cliente('Leandro', 123)
cliente_2 = cria_cliente('Renan', 456)
cliente_3 = cria_cliente('Mara', 789)

clientes << cliente_1
clientes << cliente_2
clientes << cliente_3

# BOLO DA RECEITA BANCO
banco = cria_banco('Itau', 9999, clientes)

#Nao queremos essa logica aqui!!!!
banco[:clientes].each do |cliente|
  puts "Nome: #{cliente[:nome]}"

  # se o banco decide que nao pode mais imprimir CPF,
  # tera que remover essa linha em todo lugar
  puts "CPF: #{cliente[:cpf]}"
end

# Utilizar Hashes demonstra ser uma solucao limitada,
# uma vez que nao eh possivel adicionar COMPORTAMENTO (metodos)
# nos objetos. Apenas atributos.
