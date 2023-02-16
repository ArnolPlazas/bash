# !/bin/bash
# Programa para ejemplificar el uso de arreglos.
# Autor: Arnol Plazas

arrayNumbers=(1 2 3 4 5 6)
arrayStrings=(Arnol, Mathieu, Maite, Camila, Silvana)
arrayRange=({A..Z} {10..20})

# Imprimir todos los valores

echo "Numbers array: ${arrayNumbers[*]}"
echo "Strings array: ${arrayStrings[*]}"
echo "Mix array: ${arrayRange[*]}"


#Imprimir los tamaños de los arreglos

echo "Numbers array length: ${#arrayNumbers[*]}"
echo "Strings array length: ${#arrayStrings[*]}"
echo "Mix array length: ${#arrayRange[*]}"


# imprimir la posición de los arreglos

echo "Position 3 of Numbers array: ${#arrayNumbers[3]}"
echo "Position 3 of Strings array length: ${#arrayStrings[3]}"
echo "Position 3 Mix array length: ${#arrayRange[3]}"

# añadir y eliminar valores en un arreglo
arrayNumbers[7]=20
unset arrayNumbers[0]
echo "Numbers array: ${arrayNumbers[*]}"
echo "Numbers array length: ${#arrayNumbers[*]}"

