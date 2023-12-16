import socket


def start_server():
    try:
        server = socket.socket(socket.AF_INET,socket.SOCK_STREAM)
        server.bind(('127.0.0.1',2020))
        server.listen(4)
        while True:
            client_socket,address = server.accept()
            data = client_socket.recv(1024).decode('utf-8')
            print(data)
            message = load_page(data)
            client_socket.send(message)
            client_socket.shutdown(socket.SHUT_WR)
    except KeyboardInterrupt:
        server.close()

def load_page(request_data):
    HDRS = 'HTTP/1.1 200 OK\r\nContent-Type: text/html; charset=utf-8\r\n\r\n'
    HDRS_404 = 'HTTP/1.1 200 OK\r\nContent-Type: text/html; charset=utf-8\r\n\r\n'

    path = request_data.split(' ')[1]
    response = ''
    try:
        with open('socket/server/views'+path,'rb') as file:
            response = file.read()
        return HDRS.encode('utf-8') + response
    except FileNotFoundError:
        return (HDRS_404 + "sry").encode('utf-8')
    

# client_socket2 = socket.socket(socket.AF_INET,socket.SOCK_STREAM)

if __name__ == "__main__":
    start_server()