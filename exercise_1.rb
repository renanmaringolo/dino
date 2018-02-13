######
# 1) Imprima o nome completo sem modificar o valor da string original
######


nome = 'Renan'
sobrenome = 'Proenca'

# seu codigo aqui, use o metodo puts para imprimir o nome completo
puts('nome' + 'sobrenome')

###### NAO MEXER #######
puts(nome) # deve ser Renan, nao pode mudar!
puts(sobrenome) # deve ser Proenca, nao pode mudar!

######
# 2) Imprima o nome completo MODIFICANDO o valor da string original
######

nome = 'Renan'
sobrenome = ' Proenca'

# seu codigo aqui, use o metodo puts para imprimir o nome completo
nome <<  sobrenome
puts(nome())

###### NAO MEXER #######
puts(nome) # deve ser Renan Proenca
puts(sobrenome) # deve ser Proenca, nao pode mudar!

######
# 3) Crie um metodo que soma dois valores
######

# seu codigo aqui
def nome()
 'Renan Proenca'
end

def sobrenome
' Proenca'
end

'Renan Proenca' .+('Proenca')




###### NAO MEXER #######
puts soma(1, 2) # deve ser 3

1.+(2)
