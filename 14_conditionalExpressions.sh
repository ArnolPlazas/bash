# ! /bin/bash
# Programa para ejemplificar las expresiones condicionales.
# Autor: Arnol Plazas

age=0
country=""
pathFile=""

read -p "enter your age: " age
read -p "enter your country: " country
read -p "enter the path file: " pathFile

echo -e "\nConditional expressions with numbers"
if [ $age -lt 10 ]; then
	echo "The person is a child"
elif [ $age -ge 10 ] && [ $age -le 17 ]; then
	echo "The person is an adolescent"
else
	echo "The person is an adult"
fi


echo -e "\nConditional expressions with strings"
if [ $country = "Colombia" ]; then
	echo "The person is colombian"
elif [ $country = "Spain" ] || [ $country = "France" ]; then
	echo "The person is european"
else
	echo "The nationality is not known"
fi


echo -e "\nConditional expressions with files"
if [ -d $pathFile ]; then
	echo "The path exist"
else
	echo "The path doesn't exist"
fi




