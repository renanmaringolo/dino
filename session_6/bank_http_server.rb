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
      banks_dao.list_all.map do |bank|
        response = response + "<li><a href=\"/banks/#{bank.code}\">#{bank.name}</a></li>"
      end
      response = response + "</ul>"

      client.puts response
    elsif verb == 'GET' && path == '/banks.json'
      client.print "HTTP/1.1 200\r\n" # 1
      client.print "Content-Type: application/json\r\n" # 2
      client.print "\r\n" # 3
      client.puts(JSON.dump({ banks: banks_dao.displays }))
    elsif verb == 'GET' && matched = path.match(/\/banks\/(.*)$/)
      code = matched[1]
      bank = banks_dao.search_for_code(code)

      if bank.nil?
        client.print "HTTP/1.1 404\r\n" # 1
      else
        client.print "HTTP/1.1 200\r\n" # 1
        client.print "Content-Type: text/html\r\n" # 2
        client.print "\r\n" # 3
        client.puts("<h3>#{bank.name}</h3>")
      end
    elsif verb == 'GET' && path == '/login'
      client.print "HTTP/1.1 200\r\n" # 1
      client.print "Content-Type: text/html\r\n" # 2
      client.print "\r\n" # 3

      html = "<form action=\"/login\" method=\"POST\">"
      html += "<input placeholder='Type your CPF' type='text' name='cpf'>"
      html += "<input type='submit' value='Login'>"
      html += "</form>"

      client.puts(html)
    elsif verb == 'POST' && path == '/login'
      # implementar logica do users DAO e toda aquela parafernalha
      client.print "HTTP/1.1 200\r\n" # 1
      client.print "Content-Type: text/html\r\n" # 2
      client.print "\r\n" # 3
      client.puts "<h3>Bem-vindo</h3>"
    else
      client.print "HTTP/1.1 404\r\n" # 1
    end
  end
  client.close
end
