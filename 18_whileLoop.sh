# !/bin/bash
# Programa para ejemplificar el uso de while  loop.
# Autor: Arnol Plazas


numero=1

while [ $numero -ne 10 ]
do
	echo "print: $numero veces"
	numero=$((numero + 1 ))
done

