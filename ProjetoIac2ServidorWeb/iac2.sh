#!/bin/bash

echo "criando script  IAC-2"
echo "autor Marcelo Vidal"
echo "linux avançado - DIO"
echo "---------------------"

echo "atualizando servidor "
apt-get update
echo "upgrade "
echo "--------"
apt-get upgrade
echo "apache"
echo "-------"
apt-get install apache2
echo "unzip"
echo "-------"
apt-get install unzip
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp –R * /var/www/html/
