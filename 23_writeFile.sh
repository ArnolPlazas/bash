# !/bin/bash
# Programa para ejemplificar como se escribe en un archivo.
# Autor: Arnol Plazas

echo "Escribir en un archivo"

echo "Valores escritos con el comando echo" >> $1

# Adicion mutilinea

cat <<EOM >> $1
$2
EOM
