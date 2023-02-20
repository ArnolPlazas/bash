# !/bin/bash
# Programa para ejemplificar como se lee en un archivo.
# Autor: Arnol Plazas

echo "Leer en un archivo"


echo -e "\nUsando el comando cat"
cat $1

echo -e "\nAlamacenar los valores en una variable"
valueCat=`cat $1`
echo "$valueCat"


# Se utiliza la variable IFS (Internal Field Separetor) para evitar que los espacios en blanco al inicio y al final se recorten

echo -e "\nLeer archivos por linea utilizando while"
while IFS= read line
do
	echo "$line"
done < $1
