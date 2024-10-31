
diccionario = {'2910290': 'Leonardo Mendez','1298568': 'Juan Perez','5884569': 'Algún Fulano' }


nombre = input("Ingrese el dato de persona a buscar: ")


for dicc_cedula, dicc_nombre in diccionario.items():

    if nombre == dicc_nombre:
        cedula = dicc_cedula
        nombre = dicc_nombre
        break
    else:
        cedula = None

if cedula:

    deuda = {'2910290': 2000,'1298568': 5000,'5884569': 0 }


    for cedula_deuda, deuda_dicc in deuda.items():
        
        if cedula_deuda == cedula:

            print("La persona: {}\t tiene la deuda: {}".format(dicc_nombre,deuda_dicc))
            break
else:

    print("Persona: {}\t NO encontrada con deuda".format(nombre))






