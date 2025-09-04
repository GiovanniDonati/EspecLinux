#!/bin/bash

# Disc Management
## Disco, aramzenamento de informações, como HD, SSD, NVMe
## Sistema de arquivo, cada OS tem o seu. FAT32/NTFS no windows
## Particionamento, divisão do disco logicamente.

## Verificar discos/partições
lsblk
## Verifica mais detalhadamente
fdisk -l

# Particionamento de disco
fdisk /dev/sdb
# Seguir os comandos via o help
# Após criar, formatar o disco
mkfs.ext 4 /dev/sdb

# Montar o disco
cd /mnt
mkdir disk2
mount /dev/sdb /mnt/disk2/
# Assim, tudo que for salvo neste diretório, será salvo nesta repartição
# Desmontar o disco
unmount /dev/sdb
# OBS: Essa montagem não persiste ao desligar o computador

# Montar disco automaticamente ao ligar o computador
nano /etc/fstab
# Adicione está linha no final
/dev/sdb /disk2 ext4 defaults 0 0