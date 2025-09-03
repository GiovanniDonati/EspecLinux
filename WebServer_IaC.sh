#!/bin/bash

# WEB SERVER
echo "Atualizando o server"
apt-get update 
apt-get upgrade -y

apt-get install apache2 unzip -y

echo "Baixando e atualizando os arquivos da aplicação"
cd /tmp
wget https:github.com/GiovanniDonati/EspecLinux/archives/refs/heads/main.zip

unzip main.zip

cd EspecLinux-main
cp -R * /var/www/hmtl
