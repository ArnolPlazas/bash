# !/bin/bash
# Programa que permite manejar las utilidades de Postgres.
# Autor: Arnol Plazas

option=0
currentDate=`date +%Y%m%d`

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
	echo -e "\nlist of BD"
	sudo -u postgres qsl -c "\l"
	read -p "Choose BD that you would like to backup" backupBD
	echo -e "\n"
	if [ -d "$1" ]; then
		echo -e "\nSet permissions of the folder"
		echo "$password" | sudo -S chmod 755 $s1
		echo -e "\nBacking up..."
		sudo -u postgres pg_dump -Fc $bdBackup > "$1/bdBackup$currentDate.bak"
		echo -e  "\nBackup did correctly in$1/bdBackup$currentDate.bak"

	else
		echo -e "The folder not exist"
	fi
	read -n1 -s -r -p "PRESS [ENTER] TO CONTINUE..."
}


# Funcion para restaurar un respaldo
restoreBackup(){
	echo -n "List backups"
	read -p "get into the folder where is the backups: " backappFolder
	ls -la $backupFolder
	read -p "Choose the backup to restore: " restoreBackup
	echo -e "\n"
	read -p "Write the name of target BD: " targetBD
	
	verifyBD=$(sudo -u postgres psql -lqt | cut -d \| -f 1 | grep -wq $targetBD)
    	if [ $? -eq 0 ]; then
        echo "Restore target BD: $targetBD"
    else
        sudo -u postgres psql -c "create database $targetBD"
    fi

    if [ -f "$1/$restoreBackup" ]; then
        echo "Restore backup..."
        sudo -u postgres pg_restore -Fc -d $targetBD "$1/$restoreBackup"
        echo "List of BD"
        sudo -u postgres psql -c "\l"
    else
        echo "The restore $restoreBackup is not  exist"
    fi    
    read -n 1 -s -r -p "PRESS [ENTER] TO CONTINUE..."

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
