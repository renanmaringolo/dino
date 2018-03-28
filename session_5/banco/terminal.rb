require_relative './cliente.rb'
require_relative './bancos_dao.rb'
require_relative './clientes_dao.rb'

#### 5 metodos
# conectar => Banco | nil
# login(Banco) => Cliente
# operacoes(Banco) => empty
# menu(Banco) => Integer
# calcula_saldo(Array, Array) => Integer
####
class Terminal
  attr_reader :identificador

  def initialize
    @identificador = 'BLAH123' # depois a gente gera um valor aleatorio
    @bancos_dao = BancosDAO.new
    @clientes_dao = ClientesDAO.new
  end

  def conectar
    puts '===== Bem-vindo ao terminal 24horas ====='
    puts 'Trabalhamos com os seguinte bancos'
    puts @bancos_dao.displays

    print 'Escolha seu banco: '
    digitado = gets.strip

    @bancos_dao.busca_por_codigo(digitado)
  end

  def login(banco)
    puts "====== Banco #{banco.nome} ======"

    print 'Digite seu CPF: '
    cpf = gets.strip

    cliente = @clientes_dao.busca_por_cpf(cpf)

    if cliente.nil?
      print 'Cliente não encontrado. Deseja cadastrar? (y/n): '
      escolha = gets.strip
      return nil if escolha != 'y'

      print 'Digite seu nome: '
      nome = gets.strip

      cliente = @clientes_dao.insere(cpf, nome)
    end
    cliente      
  end

  def operacoes(banco, cliente)
    opcao = menu(banco)
    movimentos = []
    saques = []
    depositos = []

    while opcao != 0 do
      if opcao == 1
        print 'Valor do depósito: '
        deposito = gets.to_i
        depositos << deposito
        File.open("session_5/banco/#{cliente.cpf}-depositos.txt", 'a') { |f| f.write("#{deposito}\n") }
        movimentos << "Depósito realizado de: #{deposito}, às #{Time.now}, no terminal: #{identificador}"
      elsif opcao == 2
        saldo = calcula_saldo(depositos, saques)
        print 'Valor do saque: '
        saque = gets.to_i

        if saldo < saque
          puts 'Valor insuficiente'
        else
          saques << saque
          File.open("session_5/banco/#{cliente.cpf}-saques.txt", 'a') { |f| f.write("#{saque}\n") }
          movimentos << "Saque realizado de: #{saque}, às #{Time.now}, no terminal: #{identificador}"
        end
      elsif opcao == 3
        saldo = calcula_saldo(depositos, saques)
        puts movimentos
        puts "Seu saldo atual é de: #{saldo}"
      end

      opcao = menu(banco)
    end
  end

  def menu(banco)
    puts "====== Banco #{banco.nome} ======"

    puts '## Menu ##'
    puts '#1 - Depósito'
    puts '#2 - Saque'
    puts '#3 - Extrato'
    puts '#0 - Sair'
    puts

    print 'Escolha uma opção: '
    gets.to_i
  end

  # TODO: Tirar isso daqui
  def calcula_saldo(depositos, saques)
    soma_depositos = depositos.inject(0) { |acc, deposito| acc + deposito }
    soma_saques = saques.inject(0) { |acc, saque| acc + saque }

    soma_depositos - soma_saques
  end
end
