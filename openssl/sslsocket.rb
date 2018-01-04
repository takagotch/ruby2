require 'socket'
require 'openssl'

socket = TCPSocket.new("www.takagotch.com", 443)

ssl_context = OpenSSL::SSL::SSLContext.new()

unless ssl_context.verify_mode
  warn "warning: peer certificate won't be verified this session."
  ssl_context.verify_mode = OpenSSL::SSL::VERIFY_NONE
end
sslsocket = OpenSSL::SSL::SSLSocket.new(socket, ssl_context)
sslsocket.sync_close = true
sslsocket.connect

sslsocket.puts("GET /secret-info.html")
while line = sslsocket.gets
  p line
end

