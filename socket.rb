require 'socket'

# Socket.tcp("www.facebook.com", 443) {|sock|
  # sock.print "GET / HTTP/2\r\nHost: www.facebook.com\r\n\r\n"
  # sock.close_write
  # puts sock.read
# }

require 'socket'
include Socket::Constants
socket = Socket.new( AF_INET, SOCK_STREAM, 0 )
sockaddr = Socket.pack_sockaddr_in( 80, 'www.google.com' )
socket.connect( sockaddr )
socket.write( "GET / HTTP/1.0\r\n\r\n" )
results = socket.read
p results