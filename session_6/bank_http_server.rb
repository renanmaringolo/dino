# Steps
# 1. open socket on port 2000
# 2. accept connection 
# 3. receive client message
# 4. send response 
# 5. close connection

# Request message (format)
# GET /

# Response message 1
# HTTP/1.1 200 
# Content-Type: text/plain
# Dinossauro
# Ovo

# Response message 2
# HTTP/1.1 200 
# Content-Type: text/html
# <p>Dinossauro</p>

# Response message 3 
# HTTP/1.1 200 
# Content-Type: application/json
# { name: 'Bradesco', code: '237' }

require 'socket'
require_relative './bancos_DAO.rb'
require 'json'

socket = TCPServer.open(2000)

puts 'Listening to the port 2000...'

banks_dao = BanksDAO.new

while client = socket.accept
  request = client.gets # GET /banks
  puts request
 
  if request
    verb, path = request.split
    
    if verb == 'GET' && path == '/banks'
      client.print "HTTP/1.1 200\r\n" # 1
      client.print "Content-Type: text/html\r\n" # 2
      client.print "\r\n" # 3
      response = "<ul>"
      banks_dao.displays.map do |display|
        response = response + "<li>#{display}</li>"
      end
      response = response + "</ul>"
                
      client.puts response
    elsif verb == 'GET' && path == '/banks.json'
      client.print "HTTP/1.1 200\r\n" # 1
      client.print "Content-Type: application/json\r\n" # 2
      client.print "\r\n" # 3
      client.puts(JSON.dump({ banks: banks_dao.displays }))
    else
      client.print "HTTP/1.1 404\r\n" # 1
    end
  end 
  client.close
end
