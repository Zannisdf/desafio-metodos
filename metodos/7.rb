#Ejercicio 7
def search?(str, char)
  str.include? char
end

cadena = 'Hola Mundo!'
caracter = 'o'

puts search?(cadena, caracter)
