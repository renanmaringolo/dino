require_relative './banco.rb'

# Data Access Object
class BancosDAO

  def initialize
    # 237|Itau\n341|Bradesco\n
    file = File.read('session_5/banco/bancos.txt')
    @linhas = file.split("\n")
  end

  def displays
    @linhas.map { |linha| linha.gsub('|', '. ') }
  end

  def busca_por_codigo(codigo)
    # "237|Bradesco" | nil
    linha = @linhas.detect { |linha| linha.split('|')[0] == codigo }
    return nil if linha == nil

    Banco.new(linha.split('|')[1])
  end
end
