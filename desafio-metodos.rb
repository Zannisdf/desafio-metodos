#Ejercicio 1
def par(x)
  x % 2 == 0
end

#Ejercicio 2
def random?
  [true, false].sample
end

puts random? ? 'Sí' : 'No'

#Ejercicio 3
def check5(n)
  n > 5
end

#Ejercicio 4
def greeting(str)
  puts 'Hola Mundo' if str == 'Hola'
end

#Ejercicio 5
def even_numbers_between(n_1, n_2)
  while n_1 <= n_2
    puts n_1 if n_1.even?
    n_1 +=1
  end
end

#Ejercicio 6
def draw_line(size)
  '*' * size
end

def draw_lines(width, height)
  height.times { puts draw_line(width) }
end

draw_lines(2, 10)


#Ejercicio 7
def search?(str, char)
  str.include? char
end

#Ejercicio 8
classmates = %w(Gonzalo Cristian Katheryne Maribel Sergio Lorena Diego Jorge Brayder Gustavo Rodrigo Loreto Natalia Constanza Matias)

#Imprimir todos los elementos que excedan los 5 caracteres
classmates.each { |name| puts name if name.size > 5 }
#Crear un arreglo nuevo con todos los elementos en minuscula
classmates_downcase_only = []
classmates.each { |name| classmates_downcase_only.push name.downcase }
#Crear un metodo que devuelva un arreglo con la cantidad de caracteres de cada nombre
def names_size(array)
  sizes = []
  array.each { |name| sizes.push name.size }
  sizes
end

puts classmates_downcase_only
puts names_size(classmates).class
