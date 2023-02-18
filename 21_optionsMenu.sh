# !/bin/bash
# Programa que permite manejar las utilidades de Postgres.
# Autor: Arnol Plazas

option=0

while :
do
	# limpiar pantalla
	clear
	# Desplegar el menú de opciones
	echo "-----------------------------"
	echo "PGUTIL - Programa de utilidad de Postgres"
	echo "-----------------------------"
	echo "             MENÚ PRINCIPAL              "
	echo "1. Instalar Postgres"
	echo "2. Desinstalar Postgres"
	echo "3. Sacar respaldo"
	echo "4. Restar respaldo"
	echo "5. Salir"

	# Leer los datos del usuario -capturar información
	read -n1 -p "Ingrese una opción [1-5]: " option

	#Validar la sentencia case
	case $option in
		1)
			echo -e "\nInstalar postgres..."
			sleep 3
			;;
		2)
			echo -e "\nDesintalar posgres...."
			sleep 3
			;;
		3)
			echo -e "\nSacar respaldo...."
			sleep 3
			;;
		4)
			echo "\nRestar posgres...."
			sleep 3
			;;
		5)
			echo "\nSalir del programa...."
			exit 0
			;;
	esac
done
