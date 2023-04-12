#!/bin/bash

echo "Atualizando o servidor "

apt-get update
apt-get upgrade -y

echo "Instalação do Apache"
apt-get install apache2 -y

echo " Instalação do  unzip -y"
apt-get install unzip -y

echo "Baixando  arquivos da aplicação "
cd /temp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html

