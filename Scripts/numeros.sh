#!/bin/bash

#Solicitando um número
echo "Digite um número:"
read number

#Testando se esse número é postivo, negativo ou zero
if [ "$number" -eq 0 ];
then
    echo "Seu número é igual a zero"
elif [ "$number" -gt 0 ];
then
    echo "Seu número é postivo"
elif [ "$number" -lt 0 ];
then
    echo "Seu número é negativo"
fi
