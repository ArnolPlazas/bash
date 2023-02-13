# ! /bin/bash
# Programa para ejemplicar el paso de argumentos
# Autor: Arnol Plazas

nombreCurso=$1
horarioCurso=$2

echo "El nombre del curso es: $nombreCurso dictado en el horario $horarioCurso"
echo "El número de parámetros enviados es: $#"
echo "Los párametros enviados son: $*"
