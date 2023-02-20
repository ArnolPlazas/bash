# !/bin/bash
# Programa para ejemplificar el empaquetamiento con el comando pbzip.
# Autor: Arnol Plazas

echo "Empaquetar todos los scripts  de la carpta shell"
tar -cvf shell.tar *.sh
pbzip2 -f shell.tar



echo "Empaquetar un direcotrio cpn tar y pbzip2"
tar -cf *.sh -c > shell2.bz2


