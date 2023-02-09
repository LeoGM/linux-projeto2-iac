#!/bin/bash

echo "Atualizacao..."
	apt-get update
	apt-get upgrade -y

echo "Instalacao apache2 e unzip..."
	apt-get install apache2 -Y
	apt-get install unzip -Y

echo "Baixando e copiando os arquivos da aplicacao..."
	cd /tmp
	wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
	unzip main.zip
	cd linux-site-dio-main
	cp -R * /var/www/html

echo "Fim..."

