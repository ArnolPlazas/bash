# !/bin/bash
# Programa que permite manejar las utilidades de Postgres.
# Autor: Arnol Plazas

option=0

# Funcion para instalar postgres
install_postgres(){
	echo -e "\nverify  instalation of postgres..."
	verifyInstall=$(which psql)
	if [ $? -eq 0 ]; then
		echo -e "Postgres is already installed"
	else
		read -s -p "Please write sudo password: " password
		echo -e "\n"	
		read -s -p "Please write postgress password: " passwordPostgres
		echo "$password" | sudo -S apt update
		echo "$password" | sudo -S apt  install postgresgl postgresql-contrib -y
		sudo -u postgres psql -c "ALTER USER postgres WITH PASWORD '{$passwordPostgres}';"
		echo "$password" | sudo -S systemctl enable postgresql.service
		echo "$password" | sudo -S systemctl start postgresql.service
	fi
	read -n1 -s -r -p "PRESS [ENTER] TO CONTINUE..."

}


# Funcion para desistalar postgres

desinstall_postgres(){	
	echo -e "\nverify  instalation of postgres..."
	verifyInstall=$(which psql)
	if [ $? -eq 0 ]; then
		read -s -p "Please write sudo password: " password
		echo -e "\n"
		echo "$password" | sudo -S systemctl stop postgresql.service
		echo "$password" | sudo -S apt-get -y --purge remove postgresgl\*
		echo "$password" | sudo -S rm -r /etc/postgresql
		echo "$password" | sudo -S rm -r /etc/postgresql-common
		echo "$password" | sudo -S rm -r /var/lib/postgresql
		echo "$password" | sudo -S userdel -r postgres
		echo "$password" | sudo -S groupdel postgresql
	else
		echo -e "Postgres is not installed yet"
	fi
	read -n1 -s -r -p "PRESS [ENTER] TO CONTINUE..."
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
			desinstall_postgres
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
			echo -e "\nExit the program...."
			exit 0
			;;
	esac
done
