#!/bin/bash

# Packages Management
## Sempre que for atualizar, fazer um snapshot do OS

## Faz download dos arquivos para atualizar
apt update
## A partir dos arquivos baixados, instala, -y confirma operação
apt upgrade -y

## Pesquisar um pacote/app especifico
sudo apt search vlc

## Instalar app baixado local
sudo apt install ./file.deb
