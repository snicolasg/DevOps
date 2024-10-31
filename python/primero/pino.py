

alto = int(input("Ingrese el alto del triangulo (entero): "))

for i in range( 1, alto + 1 ):

    espacios = ' ' * (alto - i)

    asteriscos = '*' * (2 * i - 1)

    print(espacios + asteriscos)

