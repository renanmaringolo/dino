class Cliente

  attr_reader :nome, :cpf
  
  def initialize(nome, cpf)
    @nome = nome
    @cpf = cpf
  end
end
