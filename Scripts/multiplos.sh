#!/bin/bash

#Solicita um número a ser multiplicado
echo "Digite um número para ser multiplicado:"
read number

#Função que realiza e exibe a multiplicação
multiplicação (){
    local x=$1;
    local y=$2;
    local resultado=$((x * y));
    echo "$x * $y = $resultado";
}

#Execução da função variando o segundo argumento do 1 ao 10 (além da montagem da equação x * 0 = 0)
echo "Tabuada do $number:"
echo "$number * 0 = 0"
for i in $(seq 10)
do
multiplicação $number $i
done


