# funcoes sao metodos

# puts eh um metodo
puts() # chamando metodo sem parametro
puts('Dinossauro') # chamando metodo com 1 parametro
puts('Ola', 31, 'Outro parametro') # com 3 parametros

def nome()
  'Renan'
end

puts(nome()) # Renan
puts(nome) # Renan

# sem parenteses, preferencia eh sempre da variavel.
# quando nao tem variavel, executa o metodo.
nome = 'Leandro'

puts(nome) # Leandro
puts(nome()) # Renan

# metodo '+' nos numeros
1.+(1) # 2

# metodo '+' nas strings
'Leandro'.+(' Proenca')
# mesma coisa. Chamada de metodo com syntax sugar
'Leandro' + 'Proenca'

puts
puts 'Dinossauro' # mais syntax sugar
puts 'Dinossauro', 31 # com 2 parametros, syntax sugar
