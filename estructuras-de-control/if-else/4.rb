#Ejercicio 4
puts 'Ingrese su contraseña'
password = gets.chomp
puts password == 'secreto' ? 'Acceso PERMITIDO! :)' : 'Acceso DENEGADO! :('
