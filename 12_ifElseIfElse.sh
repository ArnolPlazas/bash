# ! /bin/bash
# Programa para ejemplificar el uso de la sentencia de decisión if, else if, else.
# Autor: Arnol Plazas

edad=0

echo "Ejemplo Sentencia If, else if else"
read -p "How are old you? " edad
if [ $edad -le 17 ]; then
	echo "You are underage"
elif [ $edad  -ge 18 ] && [ $edad -le 64 ]; then
	echo "You are adult"
else
	echo "You are old man or woman"
fi






