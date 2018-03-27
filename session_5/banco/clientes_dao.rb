require_relative './cliente.rb'

class ClientesDAO

  def initialize
    file = File.read('session_5/banco/clientes.txt')
    @linhas = file.split("\n")
  end

  def busca_por_cpf(cpf)
    linha = @linhas.detect { |linha| linha.split('|')[0] == cpf }
    return nil if linha == nil
    Cliente.new(linha.split('|')[1], linha.split('|')[0])
  end

  def insere(cpf, nome)
    File.open('session_5/banco/clientes.txt', 'a') { |f| f.write("#{cpf}|#{nome}\n") }
    Cliente.new(nome, cpf)
  end  
end
      
