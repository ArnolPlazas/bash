# !/bin/bash
# Programa que permite manejar las utilidades de Postgres.
# Autor: Arnol Plazas

option=0

# Funcion para instalar postgres
install_postgres(){
	echo "Installing posgress......"
}


# Funcion para desistalar postgres
Desinstall_postgres(){
	echo "Desinstall posgress......"
}


# Funcion para hacer un backup
makeBackup(){
	echo "Making a backup......"
	echo "backup backup: $1"
}


# Funcion para restaurar un respaldo
restoreBackup(){
	echo "restoring a backup......"
	echo "restore backup: $1"
}

while :
do
	# limpiar pantalla
	clear
	# Desplegar el menú de opciones
	echo "------------------------------------------"
	echo "PGUTIL - Programa de utilidad de Postgres"
	echo "------------------------------------------"
	echo "             MENÚ PRINCIPAL              "
	echo "------------------------------------------"
	echo "1. Instalar Postgres"
	echo "2. Desinstalar Postgres"
	echo "3. Sacar respaldo"
	echo "4. Restaurar respaldo"
	echo "5. Salir"

	# Leer los datos del usuario -capturar información
	read -n1 -p "Ingrese una opción [1-5]: " option

	#Validar la sentencia case
	case $option in
		1)
			install_postgres
			sleep 3
			;;
		2)
			Desinstall_postgres
			sleep 3
			;;
		3)
			read -p "what is the backup folder?: " backupFolder
			makeBackup $backupFolder
			sleep 3
			;;
		4)
			read -p "what is the restore folder?: " restoreFolder
			restoreBackup $restoreFolder
			sleep 3
			;;
		5)
			echo "\nExit the program...."
			exit 0
			;;
	esac
done
