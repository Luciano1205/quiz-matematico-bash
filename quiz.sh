hacer_pregunta() {
    pregunta=$1
    correcta=$2
    intentos=3

    echo ""
    echo "$pregunta"

    while [ $intentos -gt 0 ]; do
        read -p "Tu respuesta: " respuesta

        if [ "$respuesta" = "$correcta" ]; then
            echo "¡Correcto! ¡Felicitaciones!"
            return
        fi

        intentos=$((intentos - 1))

        if [ $intentos -gt 0 ]; then
            echo "Incorrecto. Te quedan $intentos intento(s). ¡Inténtalo de nuevo!"
        fi
    done

    echo "Se acabaron los intentos. La respuesta correcta era: $correcta"
}

# Suma: dos números entre 0 y 100
problema_suma() {
    a=$((RANDOM % 101))
    b=$((RANDOM % 101))
    resultado=$((a + b))
    hacer_pregunta "¿Cuánto es $a + $b?" $resultado
}

# Resta: dos números entre 0 y 100, intercambiados si A < B
problema_resta() {
    a=$((RANDOM % 101))
    b=$((RANDOM % 101))

    # Si A es menor que B, los intercambiamos
    if [ $a -lt $b ]; then
        temp=$a
        a=$b
        b=$temp
    fi

    resultado=$((a - b))
    hacer_pregunta "¿Cuánto es $a - $b?" $resultado
}

# Multiplicación: A entre 1 y 100, B entre 1 y 10
problema_multiplicacion() {
    a=$((RANDOM % 100 + 1))
    b=$((RANDOM % 10 + 1))
    resultado=$((a * b))
    hacer_pregunta "¿Cuánto es $a * $b?" $resultado
}

# División: A entre 1 y 20, B entre 1 y 10, luego A = A * B
problema_division() {
    a=$((RANDOM % 20 + 1))
    b=$((RANDOM % 10 + 1))
    a=$((a * b))
    resultado=$((a / b))
    hacer_pregunta "¿Cuánto es $a / $b?" $resultado
}

# Menú principal
while true; do
    echo ""
    echo "QUIZ MATEMÁTICO"
    echo "1) Problemas de suma"
    echo "2) Problemas de resta"
    echo "3) Problemas de multiplicación"
    echo "4) Problemas de división"
    echo "9) Salir"
    echo ""
    read -p "Elige una opción: " opcion

    case $opcion in
        1) problema_suma ;;
        2) problema_resta ;;
        3) problema_multiplicacion ;;
        4) problema_division ;;
        9)
            echo "¡Hasta luego!"
            exit 0
            ;;
        *) echo "Opción inválida. Por favor, elige 1, 2, 3, 4 o 9." ;;
    esac
done