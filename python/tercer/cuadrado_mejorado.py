

n = int(input("Ingrese cantidad de columnas: "))
m = int(input("Ingrese cantidad de filas: "))

# Generar la primera fila de la matriz
fila_inicial = list(range(1, n+1))
my_matriz = []

for i in range(m):
    # Añadir la fila actual a la matriz
    my_matriz.append(fila_inicial[:])
    
    # Rotar la fila hacia la izquierda
    fila_inicial = fila_inicial[1:] + [fila_inicial[0]]

# Mostrar la matriz resultante
for fila in my_matriz:
    for elem in fila:
        print(f"{elem}\t", end="")
    print()

