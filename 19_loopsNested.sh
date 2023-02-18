# !/bin/bash
# Programa para ejemplificar el uso de los loops anidados.
# Autor: Arnol Plazas

echo "Loops nested"


for fil in $(ls)
do
	for name in {1..4}
	do
		echo "File name: $fil - $name"
	done
done
