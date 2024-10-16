#!/bin/bash

#Criando diretório para os arquivos log
diretorio=$(date +'%Y%m%d%H%M%S')
mkdir /home/PDBD005/Documentos/Scripts/$diretorio
cd /home/PDBD005/Documentos/Scripts/$diretorio

#Socilitando a quantidade de arquivos log a serem criados
echo "Digite a quantidade de arquivos a serem criados:"
read number

#Criando arquivos
for i in $(seq $number)
do
touch log_$i.txt
done

ls
