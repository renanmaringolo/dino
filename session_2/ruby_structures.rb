def verificar(idade)
  # retornar vazio se idade nao for numero
  return unless idade.is_a?(Fixnum) # unless = if ! (a nao ser que)

  # condicoes no if/else aceitam expressoes que retornam true/false
  if pode_beber?(idade)
    puts("Idade: #{idade} - Permitido")
  else
    puts("Idade: #{idade} - Nao eh permitido")
  end
end

def pode_beber?(idade)
  # esta expressao retorna true/false
  return idade >= 18 if idade.is_a?(Fixnum)

  # quando nao for numero, queremos que o retorno seja sempre FALSE (string, symbol, etc)
  # todos os metodos retornam o valor da ULTIMA expressao
  false
end

# Quando chamar o verificar com numero, imprime a mensagem correta
# Quando chamar o verificar com string (ou entao qq coisa que nao seja numero), nao de erro
# e tbm nao imprima nenhuma mensagem

# chamada do metodo verificar
verificar(16)
verificar(18)
verificar('leandro')
