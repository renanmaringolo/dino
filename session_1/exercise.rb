##Primeiro exercicio

######
# 1) Imprima o nome completo sem modificar o valor da string original
######


nome = 'Renan'
sobrenome = 'Proenca'

# seu codigo aqui, use o metodo puts para imprimir o nome completo
puts("#{nome}, #{sobrenome}")

###### NAO MEXER #######
puts(nome) # deve ser Renan, nao pode mudar!
puts(sobrenome) # deve ser Proenca, nao pode mudar!

######
# 2) Imprima o nome completo MODIFICANDO o valor da string original
######

nome = 'Renan Proenca'
sobrenome = ' Proenca'

# seu codigo aqui, use o metodo puts para imprimir o nome completo
nome <<  ' Proenca'
puts(nome)


###### NAO MEXER #######
puts(nome) # deve ser Renan Proenca
puts(sobrenome) # deve ser Proenca, nao pode mudar!

######
# 3) Crie um metodo que soma dois valores
######

# seu codigo aqui
def soma(n1, n2, n3)
  n1 + n2 + n3
end

soma(1, 2, 3)

###### NAO MEXER #######
puts soma(1, 2, 3) ##deve ser 3
puts soma(4, 5)
