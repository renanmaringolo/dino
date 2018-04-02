def html_template
  template = '<h3>Users</h3>'

  template += '<br />'
  template += '<ul>'

  File.open('session_6/database/users.txt').each_line do |line|
    template += "<li>#{line}</li>"
  end

  template += '</ul>'
  template
end

require 'socket'

socket = TCPServer.open(8087)

puts 'Listening to the port 8087...'

while client = socket.accept
  request = client.gets
  puts request

  client.print "HTTP/1.1 200\r\n" # 1
  client.print "Content-Type: text/html\r\n" # 2
  client.print "\r\n" # 3
  client.print html_template

  client.close
end
