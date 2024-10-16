 #! /bin/bash

#Solicitando do usuário sua opnião sobre café
echo "Em uma escala de 1 a 5, o quanto que você gosta de café?"
read  nota

#Avaliando nota
case $nota in
1)
  echo "Gosta pouco ou não gosta";;
2)
  echo "Não odeia mas não chega a gostar";;
3)
  echo "Uma boa bebida";;
4)
  echo "Gosta bastante";;
5)
  echo "Não há nada melhor que um bom café"
esac
