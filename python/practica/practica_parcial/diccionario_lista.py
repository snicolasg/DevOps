

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


persona_a_buscar = input("Ingrese nombre de cliente a buscar: ")


for cedula, info in personas.items():

    if persona_a_buscar.lower() == info[0].lower():

        print("La persona: {} con cedula: {} tiene el correo electronico: {}".format(info[0],cedula,info[1]))

