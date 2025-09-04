#!/bin/bash

## Samba para controle de File Server
apt install samba -y
# Recomendado usar uma partição diferente da qual esta o OS
mkdir /disk2/publicServer
dhmod 777 publicServer

# Entra no arquivo do samba para configurar a pasta
nano /etc/samba/smb.conf
# No final do arquivo, adicione
[public]

path = /disk2/publicServer
writeable = yes
guest ok = yes
guest only = yes

# Restart o serviço do samba
systemctl restart smbd # --> Restart
systemctl status smbd # --> status
systemctl enable smbd # --> Autostart