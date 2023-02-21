# !/bin/bash
# Programa para ejemplificar la forma de como trasnferir por la red utilizando el comando rsync, utilizando las opciones de empaqutamiento para optimizarl.
# Autor: Arnol Plazas

echo "Empaquetar todos los scripts de la carpeta shelCourse y transferirlos para la red a otto equipo utilizado el comando rsync"

host=""
user=""

read -p "Ingrese el host: " host
read -p "Ingrese el usuario: " user

echo -e "\nEn este momento se procederá a empaquetar la carpeta y trasferirla según ñps datos ingresados"
rsync -avz $(pwd) $user@host:/home/arnol/Documents
