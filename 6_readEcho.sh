# ! /bin/bash
# Programa para ejemplificar como capturar la información del usuario utilizando el comando echo, read y la variable $REPLY 
# Autor: Arnol Plazas

option=0
backupName=""

echo "Programa Utilidades Postgres"
echo -n "ingresar una opción:"
read
option=$REPLY
echo -n "Ingresar el nombre del archivo del backup:"
read
backupName=$REPLY
echo "Opcion: $option, backupName: $backupName"









