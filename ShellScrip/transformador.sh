#!/bin/bash
#Medindo a Tensão dos Transformadores
#Data: 05/11/2016
#Desenvolvido para Hackathon Senti Copel 2016
while :
do
    clear
	echo "Mendindo Tensão dos Transformadores"
    date
    #Tensão do Transfomador 1
    echo > transformador1.txt
	echo '123456789' >> transformador1.txt
	echo ";" >> transformador1.txt
    awk -v min=5 -v max=150 'BEGIN{srand(); print int(min+rand()*(max-min+1))}' >> transformador1.txt
	echo ";" >> transformador1.txt
	date >> transformador1.txt
	
	sleep 5
	
	#Tensão do Transfomador 2
    echo > transformador2.txt
	echo '987654321' >> transformador2.txt
	echo ";" >> transformador2.txt
    awk -v min=5 -v max=150 'BEGIN{srand(); print int(min+rand()*(max-min+1))}' >> transformador2.txt
	echo ";" >> transformador2.txt
	date >> transformador2.txt
	
	sleep 5
	
	#Tensão do Transfomador 3
    echo > transformador3.txt
	echo '135792468' >> transformador3.txt
	echo ";" >> transformador3.txt
    awk -v min=5 -v max=150 'BEGIN{srand(); print int(min+rand()*(max-min+1))}' >> transformador3.txt
	echo ";" >> transformador3.txt
	date >> transformador3.txt
	
   	sleep 10
done