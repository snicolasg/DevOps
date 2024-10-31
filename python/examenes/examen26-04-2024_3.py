

texto = input("Ingres lista de palabras: ")

lista = texto.split()

nueva_lista = []


for elemento in lista:

    nueva_lista.append(elemento*len(elemento))


print("".join(nueva_lista))
