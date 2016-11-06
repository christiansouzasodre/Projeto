#Server 
import socket
import sys

HOST = '172.18.7.143'
PORT = 8888              

s = socket.socket()
s.listen(10) # Aceita 10 tentativas de conexão
sc, address = s.accept()

#print address
i=1
f = open('transformador'+ str(i)+".txt",'wb') # abrindo a conexão
i=i+1
while (True):

    # Recebendo e escrevendo o arquivo
    l = sc.recv(1024)
    while (l):
        f.write(l)
        l = sc.recv(1024)
f.close()

sc.close()
s.close()
