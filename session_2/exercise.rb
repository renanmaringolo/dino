def calcula_imposto(salario)
## 
   if salario < 5000
    salario * 0.15
   elsif salario >= 5000 && salario < 8000
    salario * 0.20
   else
    salario * 0.30 
   end


end

salarios = [1_000, 2_000, 5_000, 10_000]

posicao = 0
salario = salarios[posicao] # inicialmente sera 1_000

while salario != nil do
  imposto = calcula_imposto(salario) 
  puts "Salario: #{salario} - IR #{imposto}"
  posicao = posicao + 1
  salario = salarios[posicao]
  
end


###### Resultado esperado #######

# Salario: 1_000  - IR: 150.0
# Salario: 2_000  - IR: 300.0
# Salario: 5_000  - IR: 1000.0
# Salario: 10_000 - IR: 3000.0

#################################
