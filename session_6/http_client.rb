require 'socket'

socket = TCPSocket.open('localhost', 8087)

socket.puts "GET / HTTP/1.1\r\n"
socket.puts "\r\n"

while line = socket.gets
  puts line
end

socket.close
