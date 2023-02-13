
# !/bin/bash
# Programa para revisar la declaración de variables

opcion=5
nombre=Camila

echo "Opcion: $opcion Nombre: $nombre"

# exportar la variable nombre para que este disponible en los demas procesos
export nombre

# llamar al siguiente script
./2_excute_variables.sh
