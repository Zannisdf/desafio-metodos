#Ejercicio 7
inventario = {
  Notebooks: 4,
  PC_Escritorio: 6,
  Routers: 10,
  Impresoras: 6
}

def print_menu
  puts (
'1) Agregar un producto al inventario.
2) Eliminar un producto del inventario.
3) Actualizar información de un producto.
4) Mostrar stock total.
5) Mostrar el producto con más stock.
6) Verificar si un producto existe.
7) Salir.')
end

def verify_action?(n)
  n > 0 || n < 8
end

def add_product(str)
  prod = str.split[0]
  stock = str.split[1]
  inventario[prod.to_sym] = stock
end

def delete_prod(prod)
  inventario.delete(prod.to_sym)
end

print_menu
action = gets.to_i
while verify_action?(action)
  puts 'La opción ingresada no es válida. Ingrese una de las siguientes:'
  print_menu
  action = gets.to_i
end
