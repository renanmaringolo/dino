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

    while opcao != 0 do
      if opcao == 1
        print 'Valor do depósito: '
        deposito = gets.to_i
        File.open("session_5/banco/database/movimentos/#{cliente.cpf}.txt", 'a') { |f| f.write("d|#{deposito}|#{Time.now}\n") }

      elsif opcao == 2
        depositos = []
        saques = []
        if !File.exists?("session_5/banco/database/movimentos/#{cliente.cpf}.txt")
          File.open("session_5/banco/database/movimentos/#{cliente.cpf}.txt", 'w')
        end
        File.open("session_5/banco/database/movimentos/#{cliente.cpf}.txt").each_line do |line|
          valores = line.chop.split('|')
          tipo = valores[0]
          movimento = valores[1].to_i
          if tipo == 's'
            saques << movimento
          else
            depositos << movimento
          end
        end
        ## se o arquivo nao existe open no modo write
        ##Ler o arquivo de saques e depositos e jogar nos devidos arrays passando pro CALCULA_SALDO
        ##precisarei de 2 arrays(s,d)
        saldo = calcula_saldo(depositos, saques)
        print 'Valor do saque: '
        saque = gets.to_i

        if saldo < saque
          puts 'Valor insuficiente'
        else
          File.open("session_5/banco/database/movimentos/#{cliente.cpf}.txt", 'a') { |f| f.write("s|#{saque}|#{Time.now}\n") }
        end
      elsif opcao == 3
        depositos = []
        saques = []
        movimentos = []
        if !File.exists?("session_5/banco/database/movimentos/#{cliente.cpf}.txt")
          File.open("session_5/banco/database/movimentos/#{cliente.cpf}.txt", 'w')
        end
        File.open("session_5/banco/database/movimentos/#{cliente.cpf}.txt").each_line do |line|
          valores = line.chop.split('|')
          tipo = valores[0]
          movimento = valores[1].to_i
          data = valores[2]
         
          if tipo == 's'
            saques << movimento
            movimentos << "Saque realizado de #{movimento} às #{data}"
          else
            depositos << movimento
            movimentos << "Depósito realizado de #{movimento} às #{data}"
          end
        end
        ## se o arquivo nao existe open no modo write
        ## ler o arquivo de saques e depositos e jogar nos devidos arrays passando pro CALCULA_SALDO.
        ## precisarei de 3 arrays (s,d,m)
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
