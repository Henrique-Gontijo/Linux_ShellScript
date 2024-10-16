#!/bin/bash

#Movendo para o diretório de logs
cd logs

#Socilictando o número de arquivos
echo "Número de arquivos:"
read number

#Renomeando arquivos de .txt para .log sequencialmente
for i in $(seq $number)
do
file=log_$i.txt
mv $file $(ls $file | sed 's/.txt/.log/')
done
ls
