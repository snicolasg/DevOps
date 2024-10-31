

lista_tuplas_clientes = [ ("2910135", "Pepe Gomez" ) , ("11111111", "Momocho Mendez"), ("2222222" , "JJ Pitulo")]


lista_tuplas_clientes.sort(key = lambda cliente: int(cliente[0]))

print("Lista de tuplas")

for cliente in lista_tuplas_clientes:

    cedula, nombre = cliente[0], cliente [1]

    print(f"Cedula: {cedula}\t Nombre: {nombre}")

print()

lista_tuplas_clientes.sort(key = lambda cliente: cliente[1].split(" ")[1], reverse = True)


for cliente in lista_tuplas_clientes:

    cedula, nombre = cliente[0], cliente [1]

    print(f"Cedula: {cedula}\t Nombre: {nombre}")

print()


