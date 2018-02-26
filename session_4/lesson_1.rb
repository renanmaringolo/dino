# considere que precisamos armazenar nos saques/depositos,
# o valor e tambem a data do movimento. uma forma simples de
# resolver isto é "juntar" o valor com a data, utilizando interpolação
# de strings. exemplo:

saques = []
time = '26/02/2018 às 10:42'
saque = 200

# neste exemplo utilizamos o pipe (|) para separar os valores na string.
# poderia ser qualquer outrao caracter, mas vamos de pipe para deixar
# mais legível a separação.
movimento_saque = "#{saque}|#{time}" # 200|26/02/2018 às 10:42

saques << movimento_saque # insere o movimento_saque no array

puts saques

# execute este arquivo. o resultado no screen deve ser:
# 200|26/02/2018 às 10:42
