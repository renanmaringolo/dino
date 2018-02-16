#escreva um programa que calcule a média de notas de um aluno.
# A logica de uma média aritmética consiste na SOMA das notas dividida pela quantidade de provas.
# Se houveram 4 provas no ano, o cálculo consiste: 
# (nota_prova_1 + nota_prova_2 + nota_prova_3 + nota_prova_4) / 4
# Exemplos: 
# (5 + 5 + 5 + 5) / 4 = 5
# (8 + 6 + 8 + 10) / 4 = 8
total_de_provas = 4
notas = [8, 6, 8, 10]
soma = 0

# implemente a lógica aqui

for nota in notas
  soma = soma + nota

end


media = soma / total_de_provas

  
puts "A média é #{media}"

#### Resultado esperado ####
# A média é 8

