# ! /bin/bash
# Revisar los tipos de operadores
# Autor: Arnol Plazas

numA=10
numB=4

echo "Operadores aritmeticos"
echo "Numeros: A=$numA y B=$numB"
echo "Sumar A + B =" $((numA + numB))
echo "Restar A - B =" $((numA - numB))
echo "Multiplicar A * B =" $((numA * numB))
echo "Dividir A / B =" $((numA / numB))
echo "Residuo A % B =" $((numA % numB))

echo -e "\nOperadores Relacionales"
echo "Numeros: A=$numA y B=$numB"
echo "A > B =" $((numA > numB))
echo "A > B =" $((numA > numB))
echo "A <= B =" $((numA <= numB))
echo "A <= B =" $((numA <= numB))
echo "A == B =" $((numA == numB))
echo "A != B =" $((numA != numB))



echo -e "\nOperadores de Asignación"
echo "Numeros: A=$numA y B=$numB"
echo "Sumar A += B =" $((numA += numB))
echo "Sumar A -= B =" $((numA -= numB))
echo "Sumar A *= B =" $((numA *= numB))
echo "Sumar A /= B =" $((numA /= numB))
echo "Sumar A %= B =" $((numA %= numB))

