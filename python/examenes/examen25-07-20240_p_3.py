mi_lista = [("Hola", "mundo"), ("chau", "mundo"), ("Montevideo", "Uruguay"), ("Buenos Aires", "Argentina"), ("Ferrocarril", "central")]



mi_lista.sort(key = lambda elemento: len(elemento[0]) + len(elemento[1]), reverse = True )


for i in mi_lista:

    suma = len(i[0]) + len(i[1])

    print("Elemento de la lista: ", i , "Total de caracteres del elemento: ", suma)
