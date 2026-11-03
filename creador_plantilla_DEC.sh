#Crear carpeta principal y entrar
echo "Nombre de la carpeta:"
read carpeta
mkdir $carpeta
cd $carpeta

#Crear subcarpetas
echo "Selecciona estructura de carpetas:"
echo "[1] Estructura html + js"
echo "[2] Estructura html + js + css"
read opcion

if [ $opcion -eq 1 ]; then
    mkdir js    
elif [ $opcion -eq 2 ]; then
    mkdir css js
else
    echo "Opción inválida"
fi

#Crear archivos:
echo "Número de ejercicios:"
read num_ejercicios
for ((i=1; i<=num_ejercicios; i++)); do
    echo "Creando archivos para el ejercicio $i"
    touch "ejercicio_$i.html"
    if [ $opcion -eq 1 ]; then
        touch "js/ejercicio_$i.js"
    elif [ $opcion -eq 2 ]; then
        touch "css/ejercicio_$i.css"
        touch "js/ejercicio_$i.js"
    fi
done
