require_relative './banco.rb'

class BanksDAO

  def initialize
    file = File.read('session_6/bancos.txt')
    @lines = file.split("\n")
  end

  def displays
    @lines.map { |line| line.gsub('|', '. ') }
  end

  def list_all
    @lines.map do |line|
      code, name = line.split('|')
      Bank.new(code, name)
    end
  end

  def search_for_code(code)
    line = @lines.detect { |line| line.split('|')[0] == code }
    return nil if line == nil

    code, name = line.split('|')
    Bank.new(code, name)
  end
end
