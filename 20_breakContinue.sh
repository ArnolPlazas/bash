# !/bin/bash
# Programa para ejemplificar el uso de break y continue.
# Autor: Arnol Plazas

echo "Sentencia break y continue"

regex='^10_\w+\.sh$'

for fil in $(ls)
do
	for name in {1..4}
	do
		if [[ $fil =~ $regex ]]; then # expresion regular que indica el archivo .sh que comienza en 10_
			break;
		elif [[ $fil == 4* ]]; then # 4* : archivo que inicie con 4
			continue;
		else
			echo "File name: $fil - $name"
		fi
	done
done
