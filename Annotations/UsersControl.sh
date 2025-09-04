#!/bin/bash

# Manipulando usuários
## Adicionar usuário, -m criar diretório home, -c comentário, -s indica o bash
useradd giovanni -m -s /bin/bash
## Cadastra a senha
passwd giovanni
## Alterar as configurações do shell por user
chsh -s /bin/bash giovanni
## Deletar usuário
userdel -fr giovanni # --> -f force, -r deleta diretório home
## Acesso com data de expiração
useradd guest -c "Convidado" -m -e 05/09/2025
## Altera configurações do usuário
usermod guest -s /bin/bash
## Forçar usuário a trocar a senha
passwd guest -e
## Verificar todos os usuários
cat /etc/passwd
## Adicionar senha ao add
useradd convidado -c "Convidado" -s /bin/bash -m -p $(openssl passwd -crypt senha123)

# Grupos de usuários
## Verificar grupos
cat etc/group
## Adicionar user a grupo
usermod -G sudo giovanni
## Criar grupo
groupadd GRP_TESTE
## Deletar grupo
groupdel GRP_TESTE
## Criar user adicinoando a um grupo
useradd convidado -c "Convidado" -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_TESTE
## remover usuario de grupo
gpasswd -d convidado GRP_TESTE

# Permissões em diretórios
## primeiro char = diretório, 3 quadrantes de 3 char(read/write/execute), user/group/other
drwxrwxrwx
## Alterar dono do diretório
chown giovanni:GRP_TESTE /documentos/
## Alterar permissões
## R=4, W=2, X=1, nenhuma=0 --> Somando por quadrante
chmod 770 /documentos/