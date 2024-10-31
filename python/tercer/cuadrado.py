

n = int(input("ingrese cantidad de columnas: "))
m = int(input("ingrese cantidad de filas: "))

my_matriz = []

for i in range(m):
    fila = []
    for j in range(n):
        #fila = fila + [ j+1+n*i ]
        fila.append(j+1+n*i)
    #my_matriz = my_matriz +  [ fila ]
    my_matriz.append(fila)

for i in range(len(my_matriz)):
    for j in range(len(my_matriz[i])):
        print("{}\t".format(my_matriz[i][j]), end = "")
    print()
