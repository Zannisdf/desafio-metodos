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
