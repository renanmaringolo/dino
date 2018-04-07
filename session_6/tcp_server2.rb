require_relative './bancos_DAO.rb'
require 'socket'

socket = TCPServer.open(2000)

puts 'Listening to the port 2000...'

dao = BanksDAO.new

while client = socket.accept
  client.puts '=== Welcome to the 24 hours Bank ==='
  client.puts 'We work with the following banks: '
  client.puts dao.displays

  client.print 'Choose your bank: '
  typed = client.gets.chop
  bank = dao.search_for_code(typed)
  
  if bank.nil?
    client.puts 'NOT_FOUND'
  else
    client.puts 'OK:' + bank.name 
  end
  client.close 
end
