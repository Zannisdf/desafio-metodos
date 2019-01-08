#Ejercicio 1
h = {
  claveuno: 10,
  clavedos: 20,
  clavetres: 30
}

#Ejercicio 2
productos = { 'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' => 750 }

#1.-
productos.each { |producto, valor| puts producto }

#2.-
productos['cereal'] = 2200

#3.-
productos['bebida'] = 2000

#4.-
array_productos = productos.to_a

#5.-
productos.delete 'galletas'

#Ejercicio 3
h = { 'x': 1, 'y': 2 }

h['z'] = 3
h[:x] = 5
h.delete :y
puts 'yeeah' if h.key? 'z'
#Asumiendo que solamente hay valores únicos en el hash:
h.invert

#Ejercicio 4
personas = ['Carolina', 'Alejandro', 'María Jesús', 'Valentín']
edades = [32, 28, 41, 19]

#1.-
personas_hash = personas.zip(edades).to_h

#2.-
def promedio_edades(hash)
  hash.values.sum / hash.length
end

#Ejercicio 5
meses = %w(Enero Febrero Marzo Abril Mayo)
ventas = [2000, 3000, 1000, 5000, 4000]
h = meses.zip(ventas).to_h

#1.-
h = h.invert

#2.-
max = h.keys.max
