#!/bin/bash

#Criando função para fazer a contagem de arquivos
contador ()
{
   local diretorio=$1
   local total=$(ls $diretorio | wc -l)
   echo "$diretorio - Total de aquivos: $total"
}

#Contando a quantidade de arquivo das pastas var, etc e $HOME
contador /etc
contador /var
contador /home/$USER
