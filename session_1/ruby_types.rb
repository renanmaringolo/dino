# nao precisa declarar tipos estaticamente no codigo
# o ruby "adivinha" os tipos

idade = 31 # Fixnum
nome = 'Leandro' # String sao mutaveis
country = :brazil # Symbol sao imutaveis

# operador '+' nao modifica strings
nome + ' Proenca'
puts(nome) # Leandro

# operador '<<' modifica strings
nome << ' Proenca'
puts(nome) # Leandro Proenca
