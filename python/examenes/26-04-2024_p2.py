costo_items = {"papas": 100, "peras": 150, "pan": 120, "arroz": 90, "afeitadoras": 500} 

iva_items = {"papas": 10, "peras": 22, "pan": 22, "arroz": 0, "afeitadoras": 22} 

items_comprados = {"papas": 18, "peras": 38, "pan": 12, "arroz": 10, "afeitadoras": 3, "pan": 8, "sergio": 9}

total = 0

for producto, cantidad in items_comprados.items():

    if producto in costo_items: 

        if producto in iva_items:

                costo = costo_items[producto]
                iva = iva_items[producto]

                if iva != 0:
                    sub_total = 0
                    sub_total = cantidad * costo * (iva / 100)
                    total = total + sub_total

print("Total a pagar de iva: {}".format(total))

