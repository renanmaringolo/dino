require_relative './terminal.rb'

# 1) conecta no banco
# 2) faz login
# 3) realiza multiplas operacoes

# cria o terminal
terminal = Terminal.new

# conecta no banco
banco = terminal.conectar

# verifica se banco é válido
if banco == nil
  puts 'Banco inválido'
  exit
end

# faz login no banco com dados do cliente
cliente = terminal.login(banco)

# bloqueia execução do main por causa do while lá dentro.
# apenas desbloqueia quando a opção for zero.
# realiza múltiplas operações (saque, deposito, extrato, etc)
terminal.operacoes(banco) # retorna nada

puts "Sessão encerrada às #{Time.now}, obrigado, #{cliente.nome}, por confiar no #{banco.nome}" # Ou colocar dir
