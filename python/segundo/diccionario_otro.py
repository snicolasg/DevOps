diccionario = {'2910290': 'Leonardo Mendez','1298568':'Juan Perez','5884569':'Algún Fulano'}

for cedula in diccionario:

    #print(f"{personas[cedula]}")
    print(f"El señor {diccionario[cedula]} tiene cedula {cedula}.")


nombre = "Leonardo Mendez"

cedula = diccionario.get(nombre)

if nombre in diccionario:
    print(f"La cédula de {nombre} es {personas[nombre]}")
else:
    print(f"{nombre} no está en el diccionario")




