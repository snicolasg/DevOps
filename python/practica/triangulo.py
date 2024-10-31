# Pedir la altura del triángulo
altura = int(input("Ingresa la altura: "))

# Bucle para cada fila
for i in range(1, altura + 1 ):
    # Espacios a la izquierda
    print(" " * (altura - i), end="")
    # Asteriscos
    print("*" * (2 * i - 1))

