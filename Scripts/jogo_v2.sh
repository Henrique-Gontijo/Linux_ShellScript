#!/bin/bash

#Pergunta ao usuário se ele quer jogar
echo "Gostaria de jogar um jogo de adivinhação?"
echo "Sim: S"
echo "Não: N"
read answer

case $answer in
[N,n])
    exit;;
[S,s])
    ;;
esac

#Criando função com o jogo
jogo () {
valor=$((RANDOM))
echo ""

erros=0
number=40000
while [ $number -ne $valor ];
do
    read -p "Digite um número: " number
    if [ $number -gt $valor ];
    then
        echo "Seu número é maior que o meu"
	erros=$(($erros + 1))
	sleep 2
    elif [ $number -lt $valor ];
    then
        echo "Seu número é menor que o meu"
	erros=$(($erros + 1))
	sleep 2
    elif [ $number -eq $valor ];
    then
        echo "Certa resposta!"
	sleep 2
        echo "Seu número de erros foi: $erros"
    fi
done
}

#Exibindo instruções do jogo
sleep 1
echo "Eu vou gerar um número aleatório entre 0 e 32767"
sleep 1
echo "Seu objetivo é descobrir qual é o meu número com o mínimo de tentativas"
sleep 1
echo "A cada tentativa errada eu direi se seu número é maior ou menor que o meu e contabilizarei o erro"
sleep 1
echo "Então vamos começar"
sleep 1

order=1
while [ $order -eq 1 ];
do
    jogo

    echo ""
    read -p "Gostaria de jogar novamente? (S/N) " answer
    case $answer in
    [N,n])
	break;;
    [S,s])
	continue;;
    esac
done

echo ""
echo "Muito obrigado por jogar!"

