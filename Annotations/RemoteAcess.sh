# Acesso remoto ao servidor

### Do windows para Linux
## Instalar o Putty
## Saber o ip a acessar, LOCAL/LAN/NUVEM

## instalar o openssh no servidor, para conseguir acessar
sudo apt-get install openssh-server
ip a
## Configura p putty com o ip da máquina e acessa

### De Linux para Linux
## Via terminal
## Usuario@ip
ssh user@192.168.1.1

### Acesso na nuvem/AWS

## Via Putty no windows
## Converte a chave do acesso remoto para .ppk com o puttygen
## Configura no putty o connection/SSH/Auth com a chave
## AWS tem usuário padrão, ubuntu

## Via terminal Linux
## Similar ao acesso local, na rede, porém passando -i e a chave .pem
ssh -i ubuntu-AWS.pem ubuntu@34.207.109.48