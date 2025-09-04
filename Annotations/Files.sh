#!/bin/bash

# Copiando arquivos
cp /home/giovanni/bancodedados.db /disk2/
cp /home/giovanni/*.txt /disk2
cp /home/giovanni/a*.docx /disk2
## Solicita sobre o overwrite(-i), pastas(-r), verbose(-v)
cp /home/giovanni /disk2 -i -r -v


# Movendo arquivos
mv /home/giovanni/bancodedados.db /disk2/
mv /home/giovanni/*.txt /disk2
mv /home/giovanni/a*.docx /disk2
## Solicita sobre o overwrite(-i), verbose(-v)
mv /home/giovanni /disk2 -i -v
## Para renoar o arquivo
mv bancodedados.db banco_de_dados.db