# !/bin/bash
# Programa para ejemplificar la sentencia case.
# Autor: Arnol Plazas


option=""


echo "Ejemplo sentencia case"
read -n1 -p "Ingrese una opción de la A - Z: " option

case $option in
	"A") echo -e "\nOperación Guardar Archivo";;
	"B") echo -e "\nOperación Eliminar Archivo";;
	[C-E]) echo -e "\nNo esta implementada la operación";;
	*) echo -e "\nOpción incorrecta";;
esac



