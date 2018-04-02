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

app = Proc.new do |body|
  ['200', { 'Content-Type' => 'text/html' }, [body]]
end

socket = TCPServer.open(8087)

puts 'Listening to the port 8087...'

while client = socket.accept
  request = client.gets
  puts request

  status, headers, body = app.call(html_template)
  client.print "HTTP/1.1 #{status}\r\n"

  headers.each do |key, value|
    client.print "#{key}: #{value}\r\n"
  end

  client.print "\r\n"

  body.each do |part|
    client.print part
  end

  client.close
end
