
diccionario = {
    '2910290': 'Leonardo Mendez',
    '1298568': 'Juan Perez',
    '5884569': 'Algún Fulano',
    '4020304': 'Carla Gutierrez',
    '5748392': 'Luis Ramirez',
    '9384756': 'Pedro Gonzalez',
    '1289473': 'Ana Martinez',
    '9485730': 'Sofia Blanco',
    '2039485': 'Ricardo Diaz',
    '1029384': 'Maria Lopez',
    '8473920': 'Javier Torres',
    '2039481': 'Sara Paredes',
    '5847391': 'Andres Villalobos',
    '4758392': 'Laura Castillo',
    '2938475': 'Esteban Ortiz',
    '1948573': 'Camila Fernandez',
    '9384750': 'Natalia Ruiz',
    '8492031': 'Carlos Ponce',
    '2039486': 'Rosa Morales',
    '1827364': 'Pablo Serrano'
}



#cedulas = list(diccionario.keys())
cedulas = list(diccionario)

cedulas.sort(key = lambda elemento: int(elemento))


print(cedulas)




