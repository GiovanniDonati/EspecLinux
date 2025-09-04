#!/bin/bash

# Navegação em diretórios

## Vericar diretorio atual
pwd
## Listar arquivos
ls
## Listar arquivos no diretorio especifico
ls /home/
## Mudar diretorio
cd /
cd ~
## Voltar um diretório
cd ..
## Verificar arquivos antes de alterar
cd /var/ # Clicar 2x TAB, lista arquivos no caminho
## Listagem de arquivos
ls | more
## Filtragem pelo nome listando arquivos no diretórios
ls /etc/p*
ls m?g*
ls *.txt
ls arquivo[1-3]*
ls arquivo[2,5]*
ls arquivo[^2,5]*
## Listar todos os arquivos, até ocultos
ls -a
## Listar detalhes
ls -l
## Listar dados de tamanho mais humano
ls -lh

## Criar arquivo vazio
touch arquivo.txt
## Buscar arquivo
find -name arq*
## Deletar arquivo
rm arquivo.txt

## Criar diretório
mkdir documentos
mkdir 'meus documentos'
## Excluir diretórios
rmdir documentos
rm -rfvi documentos # --> -r recursivo -f force -v verbose -i confirmação 

## Ajuda nos comandos
--help
## Ajuda detalhada dos parametros
man ls

## Verificar conteúdo do arquivo
cat arquivo.txt
## Editar o arquivo
nano arquivo.txt

## Verificar histórico de comandos
history 
## Histórico no diretório/arquivo
history | grep "arquivo"
## Verificar data e hora do comando, altera o formato de retorno do history
export HISTTIMEFORMAT="%c "
## Agora aparecerá a hora e a data antes dos comandos
## Apagar historico
history -c