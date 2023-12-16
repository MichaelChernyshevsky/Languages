import socket

# address family
server = socket.socket(socket.AF_INET,socket.SOCK_STREAM)
server.bind(('127.0.0.1',2000))

# server = socket.create_server(('127.0.0.1',2000))

server.listen(4)
# wait signal
client_socket,address = server.accept()
# request
data = client_socket.recv(1024).decode('utf-8')
print(data)
HDRS = 'HTTP/1.1 200 OK\r\nContent-Type: text/html; charset=utf-8\r\n\r\n'
message = "sucess".encode('utf-8')
client_socket.send(HDRS.encode('utf-8') + message)