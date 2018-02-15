##dado um array com numeros, retornar a soma deles
# Exemplo: 
# numeros = [1, 2, 3] # 1 + 2 + 3 = 6
# Saída no terminal (output): "A soma é 6"
#a) inicializa o array de numeros
#b) inicializa a variavel soma (começa com zero)
#c) pra cada numero no array
#  c.1) adiciona o numero à variavel soma, o resultado disso atribui na variavel soma (sobrescreve)
#d) imprime a variavel soma na tela interpolada com a mensagem
  
numeros = [1, 2, 3]
soma = 0 



for num in numeros
  soma = soma + num 

end


puts "A soma é #{soma}"

 

