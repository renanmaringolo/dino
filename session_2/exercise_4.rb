#escreva um programa que calcule a média de notas de um aluno.
# A logica de uma média aritmética consiste na SOMA das notas dividida pela quantidade de provas.
# Se houveram 4 provas no ano, o cálculo consiste: 
# (nota_prova_1 + nota_prova_2 + nota_prova_3 + nota_prova_4) / 4
# Exemplos: 
# (5 + 5 + 5 + 5) / 4 = 5
# (8 + 6 + 8 + 10) / 4 = 8
notas = [8, 6, 8, 10, 7, 4, 3, 9, 8]
soma = 0
posicao = 0

# implemente a lógica aqui

for nota in notas
  soma = soma + nota

end

for cont in notas
  posicao = posicao + 1

end


def calcula_media(soma, cont)
  soma / cont
end

media = calcula_media(soma, cont)



######## implementação de lógica Renan

if media >= 5 
  puts "Aluno aprovado, a média é: #{media}"

else
  puts "Aluno reprovado, a média é: #{media}"

###### 

end
  

#### Resultado esperado ####
# A média é 8

