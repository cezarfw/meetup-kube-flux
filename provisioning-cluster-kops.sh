#!/bin/bash

OPCAO=$1
MENSAGEM_USO="
  $(basename $0) - [opções]
  
  --yes      -  Provisionar cluster 
  --config   -  Provisionar previsao do cluster (gera a configuracao do cluster antes de provisionar)
"
echo ""

if [ $# -eq 0 ] || [ $# -gt 1 ]
then
    echo -e "\033[0;31mParametro invalido, \033[0muse --yes ou --config"
    echo ""
    exit 1
fi

echo ""
echo ""

case $OPCAO in

	--config) 
		kops create cluster --cloud=aws --zones=us-east-1a,us-east-1b \
		--master-size t2.micro --master-count 3 --node-size t2.large \
		--node-count 2 clusterkube.cezaraugustoroggia.com.br
		exit 0
		;;
	--yes)
		kops create cluster --cloud=aws --zones=us-east-1a,us-east-1b \
		--master-size t2.micro --master-count 3 --node-size t2.large \
		--node-count 2 clusterkube.cezaraugustoroggia.com.br --yes
		exit 0
		;;
	    *) 
		echo -e "\033[0;31mParametro invalido! Verifique e execute o script novamente.\033[0m"
                echo ""
		exit 1
		;;
esac



