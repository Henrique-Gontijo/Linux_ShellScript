#!/bin/bash

#Função que testa se o arquivo é um arquivo regular, um diretório ou outro tipo de arquivo. O primeiro argumento é o arquivo e o segundo é  o local (diretório) em que ele está
#A função também exibe a mensagem com nome, tipo e permissões do arquivo, além de se mover para o diretório especificado
testador (){
    local folder=$1
    local directory=$2

cd $directory
if [ -f $folder ];
then
    kind="arquivo regular"
elif [ -d $folder ];
then
    kind="diretório"
else
    kind="outro tipo de arquivo"
fi

permissions=$(ls -ld $folder | awk '{print $1}')
echo "O arquivo $folder é um $kind. Suas permissões são: $permissions"
}

#Solicita o nome do arquivo e pergunta se ele está na pasta atual ou não e passa os argumentos
read -p "Digite o nome do arquivo:" arquivo
echo "O arquivo está na mesma pasta que este script?"
echo "Sim: S"
echo "Não: N"
read answer

case $answer in
[S,s])
echo
    testador $arquivo ".";;
[N,n])
read -p "Digite o diretório em que está o arquivo:" pasta
    testador $arquivo $pasta
esac
