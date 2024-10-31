diccionario = {'2910290': 'Leonardo Mendez','1298568':'Juan Perez','5884569':'Algún Fulano'} 


for cedula, nombre_completo in diccionario.items(): 

    print("Cedula: {}.\tPersona {}".format(cedula,nombre_completo))

print(diccionario.values())
