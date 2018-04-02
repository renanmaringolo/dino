require 'socket'

socket = TCPServer.open(2000)

puts 'Listening to the port 2000...'

while client = socket.accept
  data = File.read('session_6/database/users.txt')
  client.puts '==== Users ===='
  client.puts data
  client.close
end
