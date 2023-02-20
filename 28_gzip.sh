# !/bin/bash
# Programa para ejemplificar el empaquetamiento con el comando tar y gzip.
# Autor: Arnol Plazas

echo "Empaquetar todos los scripts  de la carpta shell"
tar -cvf shell.tar *.sh

# Cuando se enpaquete con gzip el empaquetamiento anterior se elimina
gzip shell.tar

echo "Empaquetar un solo archivo, con un ratio 9"
gzip -9 9_options.sh


