# ! /bin/bash
# Programa para ejemplificar como capturar la información del usuario y validarlo 
# Autor: Arnol Plazas

option=0
backupName=""
clave=""

echo "Programa Utilidades Postgres"
# acepta información de solo un caracter
read -n1 -p "ingresar una opción: " option
echo -e "\n"

read -n10 -p "Ingresar el nombre del archivo del backup: " backupName
echo -e "\n"

echo "Opcion: $option, backupName: $backupName"

read -s -p "Clave: " clave
echo "Clave: $clave"








