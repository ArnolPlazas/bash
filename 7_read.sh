# ! /bin/bash
# Programa para ejemplificar como capturar la información del usuario utilizando el comando read
# Autor: Arnol Plazas

option=0
backupName=""

echo "Programa Utilidades Postgres"
read -p "ingresar una opción: " option
read -p "Ingresar el nombre del archivo del backup: " backupName
echo "Opcion: $option, backupName: $backupName"









