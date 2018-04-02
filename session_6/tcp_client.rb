require 'socket'

socket = TCPSocket.open('localhost', 2000)

while line = socket.gets
  puts line
end

socket.close
