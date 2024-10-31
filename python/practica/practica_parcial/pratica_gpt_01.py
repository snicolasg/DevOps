productos_stock = [("Tornillos", 150), ("Arandelas", 50), ("Martillos", 30), ("Clavos", 300), ("Sierras", 20)]


productos_stock.sort(key = lambda elemento: int(elemento[1]))

print(productos_stock)

productos_stock.sort(key = lambda elemento: len(elemento[0]))

print(productos_stock)

productos_stock.sort(key = lambda elemento: elemento[0])

print(productos_stock)

productos_stock.sort(key = lambda elemento: elemento[1] > 100)

print(productos_stock)

productos_stock.sort(key = lambda elemento: str.lower(elemento[0]).count("a"), reverse = True)

print(productos_stock)
