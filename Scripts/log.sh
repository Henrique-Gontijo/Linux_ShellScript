#!/bin/bash

#Solicitando número de arquivos a serem criados
echo "Digite um número:"
read number

#Criando diretório para colocar os arquivos
mkdir logs
cd logs

#Criando o número de arquivos pedidos
for i in $(seq $number)
do
touch log_$i.txt
done

pwd
ls
