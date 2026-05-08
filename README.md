# Quiz Matemático en Bash

Script de Bash que implementa un juego de quiz matemático con problemas de suma, resta, multiplicación y división.

## Integrantes

- Sebastián Poveda
- Luciano Barbosa
- Alejandro Castro 

## Descripción

El programa muestra un menú con cuatro tipos de operaciones matemáticas. Al elegir una opción, genera dos números aleatorios y le pide al usuario que resuelva la operación. El usuario tiene 3 intentos para acertar. Si responde correctamente, el programa lo felicita; si falla las 3 veces, muestra la respuesta correcta. Luego regresa al menú principal.

## Requerimientos

- Sistema operativo: macOS, Linux o WSL en Windows.
- Bash 3.2 o superior (incluido por defecto en macOS y la mayoría de distribuciones Linux).

## Cómo ejecutar

1. Clonar el repositorio o descargar los archivos.
2. Abrir una terminal en la carpeta del proyecto.
3. Dar permisos de ejecución al script (solo la primera vez):

```bash
   chmod +x quiz.sh
```

4. Ejecutar el script:

```bash
   ./quiz.sh
```

## Uso

Al iniciar el programa aparece el siguiente menú:

QUIZ MATEMÁTICO
1) Problemas de suma
2) Problemas de resta
3) Problemas de multiplicación
4) Problemas de división
9) Salir

- **Opción 1 (Suma):** Dos números aleatorios entre 0 y 100.
- **Opción 2 (Resta):** Dos números aleatorios entre 0 y 100. Si A < B, se intercambian para que el resultado siempre sea positivo.
- **Opción 3 (Multiplicación):** A entre 1 y 100, B entre 1 y 10.
- **Opción 4 (División):** A entre 1 y 20, B entre 1 y 10. Se ajusta A = A * B para garantizar un resultado entero.
- **Opción 9:** Salir del programa.

## Estructura del proyecto

quiz-matematico-bash/
├── quiz.sh
├── README.md
└── prompts-ia.md
