# !/bin/bash
# Programa para ejemplificar el uso de foor loop.
# Autor: Arnol Plazas

arrayNumbers=(1 2 3 4 5 6)

echo "Numbers array: ${arrayNumbers[*]}"

echo "Iterar en la lista de numeros"
for num in ${arrayNumbers[*]}
do
	echo "Number: $num"
done

echo "Iterar en la lista de cadenas"
for name in "Arnol" "Mathieu" "Maite" "Camila" "Silvana"
do
	echo "Names: $name"
done

echo "Iterar en archivos"
for file in *
do
	echo "files name: $file"
done

echo "Iterar utilizando un comando"
for file in $(ls)
do
	echo "files name: $file"
done

echo "Iterar utilizand el formato tradicional"
for ((i=1; i<10; i++))
do
	echo "Number: $i"
done


