# ! /bin/bash
# Programa para ejemplificar el uso de los if anidados.
# Autor: Arnol Plazas

classNote=0
isContinue=0

echo "Ejemplo Sentencia If anidados"
read -n1 -p "What is your class note? (1-9): " classNote
echo -e "\n"
if [ $classNote -ge 7 ]; then
	echo "You pass the class"
	read -p "Would you like to continue the next level? (y/n): " isContinue
	if [ $isContinue = "y" ]; then
		echo "Welcome again!"
	else
		echo "See you later!"
	fi
else
	echo "You don't pass the class"
fi






