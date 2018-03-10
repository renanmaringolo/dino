require_relative './cliente.rb'
require_relative './banco.rb'

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
  end

  def conectar
    bancos = {
      '1' => { nome: 'Dinossauro Bank S/A', display: '1. Dinossauro Bank S/A' },
      '2' => { nome: 'Banco Itaú', display: '2. Banco Itaú' },
      '3' => { nome: 'Banco Bradesco', display: '3. Banco Bradesco' }
    }

    puts '===== Bem-vindo ao terminal 24horas ====='
    puts 'Trabalhamos com os seguinte bancos'
    displays = bancos.values.map { |value| value[:display] }
    puts displays
    print 'Escolha seu banco: '
    opcao_banco = bancos[gets.strip]

    if opcao_banco == nil
      return nil
    end

    Banco.new(opcao_banco[:nome])
  end

  def login(banco)
    puts "====== Banco #{banco.nome} ======"

    print 'Digite seu nome: '
    nome = gets.strip

    print 'CPF: '
    cpf = gets.strip

    Cliente.new(nome, cpf)
  end

  def operacoes(banco)
    opcao = menu(banco)
    movimentos = []
    saques = []
    depositos = []

    while opcao != 0 do
      if opcao == 1
        print 'Valor do depósito: '
        deposito = gets.to_i
        depositos << deposito
        movimentos << "Depósito realizado de: #{deposito}, às #{Time.now}, no terminal: #{identificador}"
      elsif opcao == 2
        saldo = calcula_saldo(depositos, saques)
        print 'Valor do saque: '
        saque = gets.to_i

        if saldo < saque
          puts 'Valor insuficiente'
        else
          saques << saque
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
