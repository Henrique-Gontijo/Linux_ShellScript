#!/bin/bash

#Estrutura que solicita número ao usuário e repete até que aquele esse seja 0
echo  "Digite um número qualquer:"
read number
while [ $number -ne 0 ]; do
    sleep 5
    echo "Digite outro número"
    read number
done
