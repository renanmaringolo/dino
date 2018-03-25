# escreve (truncate)
bancos = <<DINOSSAURO # string multi-line
310|Banco Itaú
42|Dinossauro Bank
DINOSSAURO

File.write('bancos.txt', bancos)

# abre no mode write (truncate)
File.open('bancos.txt', 'w') do |file|
  file.write("42|Dinossauro Bank S/A\n")
  file.write("310|Banco Itaú\n")
end

# abre no mode append (not truncate)
File.open('bancos.txt', 'a') do |file|
  file.write("190|Banco Bradesco\n")
end
