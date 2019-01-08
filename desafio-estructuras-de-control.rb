#Condicionales If y Else

#Ejercicio 1
a = 2
if a == 2
  puts 'La condición es verdadera'
end

#Ejercicio 2
a = 5
if a == 5
  puts 'La condición es verdadera'
end

#Ejercicio 3
a = 'X9-by'
puts 'HOLA' if 'X9-by'

#Ejercicio 4
puts 'Ingrese su contraseña'
password = gets.chomp
puts password == 'secreto' ? 'Acceso PERMITIDO! :)' : 'Acceso DENEGADO! :('

#Ejercicio 5
a = true
b = true

puts a ? b ? 'Lograste A y B!' : 'Lograste A! Pero no B!' : 'No lograste A ni B!'

#Ejercicio 6
a = 'verdadero'
b = 'falso'

puts a == 'verdadero' ? ':)' : b == 'verdadero' ? ':|' : ':('

#Ciclos Iterativos

#Ejercicio 1
10.times { |i| puts i + 1 }

#Ejercicio 2
10.times { |i| puts i }

#Ejercicio 3
#Usando while
i = 1
while i < 990
  puts i if 990 % i == 0
  i += 1
end
#Usando for
for i in 1..990 { puts i if 990 % i == 0}
#Usando times
990.times { puts i if i != 0 && 990 % i == 0 }

#Ejercicio 4
a = 5
b = ''
a.times do |i|
  puts i == 0 || i == a ? '<ul>' : "\t<li> hola </li>"
end

#Ejercicio 5
suma = 0
10.times { |i| suma += i }
puts suma

#Ejercicio 6
