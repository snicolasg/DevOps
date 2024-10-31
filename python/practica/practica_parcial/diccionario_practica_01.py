personas = {
    12345678: "Juan Perez",
    87654321: "Ana Gómez",
    11223344: "Luis Martínez",
    44332211: "María Rodríguez",
    55667788: "Carlos Sánchez",
    88997766: "Laura Díaz",
    66778899: "Pedro Ramírez",
    99887766: "Sofía Torres",
    22446688: "Miguel Herrera",
    33557799: "Claudia López"
}

correos = {
    12345678: "juan.perez@ejemplo.com",
    87654321: "ana.gomez@ejemplo.com",
    11223344: "luis.martinez@ejemplo.com",
    44332211: "maria.rodriguez@ejemplo.com",
    55667788: "carlos.sanchez@ejemplo.com",
    88997766: "laura.diaz@ejemplo.com",
    66778899: "pedro.ramirez@ejemplo.com",
    99887766: "sofia.torres@ejemplo.com",
    22446688: "miguel.herrera@ejemplo.com",
    33557799: "claudia.lopez@ejemplo.com"
}


texto = input("Ingrese un nombre a buscar: ")
cedula = 0
encontre = False


for cedula_dicc, persona_dicc in personas.items():

    if persona_dicc == texto:

        cedula = cedula_dicc
        encontre = True
        break

if encontre:

    for cedula_correo, correo in correos.items():

        if cedula_correo == cedula:

            print("El correo de la persona: {} es: {} ".format(texto, correo))

else:

    print("Persona {} NO encontrada".format(texto))
                
    

print(personas.get(33557799))



