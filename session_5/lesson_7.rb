class Carro
  attr_accessor :cor, :ano, :modelo

  def initialize(modelo, ano, cor)
    @modelo = modelo
    @ano = ano
    @cor = cor
  end

  # self aqui esta no contexto da classe,
  # pois esta FORA de um metodo de instancia
  def self.pais_de_fabricacao
    'Brasil'
  end

  def modelo
    @modelo
  end

  def imprime
    # chamando metodos modelo, ano e cor
    "#{modelo} : #{ano} : #{cor}"

    # mesma coisa, mas o self aqui esta no contexto do objeto,
    # pois esta DENTRO de um metodo de instancia
    # "#{self.modelo} : #{self.ano} : #{self.cor}"
  end
end

c1 = Carro.new('Uno', '1996', 'Azul')
c2 = Carro.new('Gol', '2001', 'Vermelho')
c3 = Carro.new('Punto', '2011', 'Vermelho')

puts "Carros do País: #{Carro.pais_de_fabricacao}"
puts c1.imprime
puts c2.imprime
puts c3.imprime
