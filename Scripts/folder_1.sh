#!/bin/bash

#Solicitando o nome do arquivo
read -p "Digite o nome do arquivo:" folder

#Testando se o arquivo é um diretório, um arquivo reguluar ou outro tipo de arquivo
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
echo "O nome digitado é de um $kind. Suas permissões são: $permissions"
