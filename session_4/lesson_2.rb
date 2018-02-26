# ainda no exemplo do lesson_1.rb, vamos considerar apenas o
# valor do movimento_saque:
time = '26/02/2018 às 10:42'
saque = 200
movimento_saque = "#{saque}|#{time}" # 200|26/02/2018 às 10:42

# agora precisamos "separar" esses valores, ou seja, precisamos
# "split" o valor do saque numa variável e a data em outra variável.
resultado = movimento_saque.split('|') # faz "split" da string utilizando o pipe como o separador

# o resultado o método split é sempre um array com os valores "separados":
puts resultado[0] # primeira posição do array é uma string de valor "200"
puts resultado[1] # segunda (e última) posição do array é uma string de valor "26/02/2018 às 10:42"

puts resultado[2] # não tem nada na terceira posição do array, portanto retorna nil (vazio), ou
# seja, não imprime nada no screen.

# execute este arquivo. o resultado no screen deve ser:
# 200
# 26/02/2018 às 10:42
#
