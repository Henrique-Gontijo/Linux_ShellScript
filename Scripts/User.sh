#!/bin/bash

#Testando se quem está executando é usuário root
if [ $EUID -eq 0 ];
then
    echo "Eu sou o usuário root"
    exit
else
    echo "Eu sou um usuário comum"
fi

#Exibindo ID e nome do usuário
echo "ID: $EUID"
echo "Usuário: $USER"
