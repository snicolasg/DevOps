productos = {
    "Laptop": {"precio": 750, "cantidad": 15, "categoria": "Electrónica"},
    "Mouse": {"precio": 20, "cantidad": 150, "categoria": "Electrónica"},
    "Silla": {"precio": 85, "cantidad": 50, "categoria": "Muebles"},
    "Escritorio": {"precio": 150, "cantidad": 20, "categoria": "Muebles"},
    "Auriculares": {"precio": 50, "cantidad": 85, "categoria": "Electrónica"},
}


costo = 0

for nombre, lista  in productos.items():

    costo = lista["precio"] * lista["cantidad"]

    print("Producto {}\t tiene un costo total: {}".format(nombre,costo))



