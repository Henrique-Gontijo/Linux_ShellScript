#!/bin/bash

#Socicitando a string ao usuário
echo "Digite o nome do arquivo:"
read nome_arquivo

#Buscando o arquivo desde o home do ususário
find /home/PDBD005 -name $nome_arquivo

