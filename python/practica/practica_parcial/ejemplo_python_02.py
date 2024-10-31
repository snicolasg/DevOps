


personas = {
    "1012345678": ("Carlos López", "carlos.lopez@example.com"),
    "1023456789": ("Ana Gomez", "ana.gomez@example.com"),
    "1034567890": ("Pedro Martínez", "pedro.martinez@example.com"),
    "1045678901": ("Lucía Fernández", "lucia.fernandez@example.com"),
    "1056789012": ("María Pérez", "maria.perez@example.com"),
    "1067890123": ("Jorge Ramírez", "jorge.ramirez@example.com"),
    "1078901234": ("Sofía Torres", "sofia.torres@example.com"),
    "1089012345": ("Miguel Castillo", "miguel.castillo@example.com"),
    "1090123456": ("Laura Herrera", "laura.herrera@example.com"),
    "1101234567": ("Luis Sánchez", "luis.sanchez@example.com")
}

texto = "Ana Gomez"

encontre = False


for cedula_items, items  in personas.items():

    if texto == items[0]:

        encontre = True
        cedula = cedula_items
        correo = items[1]

if encontre:

    print("La cedula es: {} con correo: {}".format(cedula,correo))

else:

    print("Persona no encontrada")
