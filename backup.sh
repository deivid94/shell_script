#!/bin/bash

##variaveis de ambiente
backup_arquivos="/home/deivid/destino"  #Patch de aonde sera feito o backup
destino="/home/deivid/destino" #patch destino aonde sera armazenado backup\

#variaveis para criacao do nome do arquivo. # nao mexer!!!
dia=$(date +%d-%m-%y)
hostname=$(hostname -s)

#patch aonde sera armazenado os LOGS. de sucesso ou erro
log_backup="/var/log/log-backup.log"

#nome do arquivo
arquivo="$hostname-$dia.tar.gz"

sleep 1

#########################
###########BACKUP########

	tar -zcvf $destino/$arquivo $backup_arquivos

	echo "O backup foi realizado com sucesso."
	ls -lh $destino

backup_gerado="$destino/$arquivo"
echo $destino

if [$destino/ -eq $destino/];then 
	rm -r $backup_gerado
	echo "o backup foi deletado"
	
fi
	
	
	  
#exibe na tela arquivos que estao sendo feito backup

#echo "Realizando backup: $backup_arquivos para $destino/$arquivo"








