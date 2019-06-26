nome_pessoa_1 = 'Leandro'
nome_pessoa_2 = 'Renan'
nome_pessoa_3 = 'Pakito'
nome_pessoa_4 = 'Fane'

# conjunto(nome_pessoa_1 nome_pessoa_2 nome_pessoa_3)
# declara array de elementos
pessoas = [nome_pessoa_1, nome_pessoa_2]

# inserir elemento no array
pessoas << nome_pessoa_3
pessoas << nome_pessoa_4

# a) percorrer cada elemento da lista
# b) pra cada elemento, interpolar com Ola

#### Algoritmo
# a.1) posicao comeca sempre em ZERO (posicao = 0)
# a.2) elemento = lista[posicao] (retorna o elemento OU nil)
# a.3) ENQUANTO elemento NOT nil
  # b.1) interpolar elemento com Ola (puts Ola, Leandro)
  # b.2) incrementa o valor 1 na posicao atual
  # b.3) mudar o elemento de acordo com a nova posicao

posicao = 0
nome_pessoa = pessoas[posicao]

# entra no loop infinito quando a condicional do while sempre retorna true
# ou seja, neste exemplo, temos que mudar o nome_pessoa (dentro do while)
# ate que certo momento ele passa a ser nil
while nome_pessoa != nil do
  puts "Ola, #{nome_pessoa}"
  posicao = posicao + 1 # incrementa a posicao

  # acessa o array pessoas na posicao atual, e atribui o valor (elemento) na variavel nome_pessoa
  nome_pessoa = pessoas[posicao]
    if nome_pessoa == nil
      puts "Acabou"
    end
end
