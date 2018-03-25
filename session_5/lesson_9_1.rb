# tenta abrir o arquivo, e lança erro caso não exista
begin
  File.open('nao-existente.txt')
rescue
  puts 'Deu erro!'
end

# outra forma de utilizar o rescue
File.open('nao-existente.txt') rescue puts 'Deu erro! (inline)'

# tenta abrir o arquivo, e por causa do mode "w",
# cria o arquivo caso não exista. se já existir, trunca o conteúdo
File.open('arquivo.txt', 'w')

# abre o arquivo no mode write e escreve nele
File.open('arquivo.txt', 'w') { |f| f.write('dinossauro') }

# abre o arquivo no mode read e chama o método read que
# traz o conteúdo de dentro do arquivo
puts File.open('arquivo.txt', 'r').read

# outra forma de escrever. vai sobrescrever o arquivo!!!
File.write('arquivo.txt', 'dinoooo')

# outra forma de ler
puts File.read('arquivo.txt')

# abre um arquivo novo (cria se não existir) no mode append (não trunca) e escreve nele
File.open('dinossauros.txt', 'a') { |f| f.write('dinossauro ') }

puts File.read('dinossauros.txt')
