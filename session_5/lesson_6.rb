class Pessoa # RECEITA
  # apenas leitura
  # attr_reader :idade

  # apenas escrita
  # attr_writer :idade

  # leitura E escrita
  # attr_reader + attr_writer
  attr_accessor :nome, :idade

  # METODO DE CLASSE
  def Pessoa.metodo_de_classe
    'metodo de classe'
  end

  def metodo_de_objeto
    'metodo de objeto'
  end
end

p1 = Pessoa.new
p1.nome = 'Renan'
p1.idade = 90

puts "Nome: #{p1.nome}"
puts "Idade: #{p1.idade}"

puts "Metodo de classe: #{Pessoa.metodo_de_classe}"
puts "Metodo de objeto: #{p1.metodo_de_objeto}"
