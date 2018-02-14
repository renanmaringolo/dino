salarios = [1_000, 2_000, 5_000, 10_000]

posicao = 0
salario = salarios[posicao] # inicialmente sera 1_000

#while salario != nil do
  # chama o metodo "calcula_imposto" e atribui numa variavel "imposto"
  # imprime (puts) "Salario: #{salario} - IR: #{imposto}"
  # incrementa o valor 1 na posicao (lembra?)
  # tem que mudar o salario pra nao dar loop infinito (olha pra linha 4)
#end

### Regras pro calculo do imposto
# - ate 5000 (< 5000) => 15%
# - de 5000 a 8000 (>= 5000 && < 8000) => 20%
# - a partir de 8000 (> 8000) => 30%
# Exemplos:
# calcula_imposto(500) => 75.0
# calcula_imposto(6000) => 1200.0
###
def calcula_imposto(salario)
  # Opcao 1
  # if (condicao)
    # salario * aliquota
  # elsif (outra condicao)
    # salario * outra aliquota
  # else
    # salario * maior aliquota
  # end

  # Opcao 2
  # return salario * 0.15 if salario < 5_000
  # e por ai vai...
end

###### Resultado esperado #######

# Salario: 1_000  - IR: 150.0
# Salario: 2_000  - IR: 300.0
# Salario: 5_000  - IR: 1000.0
# Salario: 10_000 - IR: 3000.0

#################################
