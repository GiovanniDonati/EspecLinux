#!/bin/bash

# Web Server
## Instalndo o apache
apt install apache2 -y
## Verifica se está rodando
systemctl status apache2
## Verifica o ip
ip a
## Acessa o diretório padrão e altere
cd /var/www/html
