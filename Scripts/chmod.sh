#!/bin/bash

echo "Digite o nome do arquivo:"
read arquivo
arquivo="$arquivo.sh"
chmod u+x $arquivo
ls -l $arquivo
echo "Você gostaria de executar esse arquivo agora?"
echo "Sim: S"
echo "Não: N"
read i

case $i in
[N,n])
    exit;;
[S,s])
    ./$arquivo
esac
