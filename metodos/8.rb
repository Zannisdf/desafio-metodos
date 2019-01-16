#Ejercicio 8
classmates = %w(Gonzalo Cristian Katheryne Maribel Sergio Lorena Diego Jorge Brayder Gustavo Rodrigo Loreto Natalia Constanza Matias)

#Imprimir todos los elementos que excedan los 5 caracteres
classmates.each { |name| puts name if name.size > 5 }

#Crear un arreglo nuevo con todos los elementos en minuscula
classmates_downcase_only = classmates.map { |name| name.downcase }

#Crear un metodo que devuelva un arreglo con la cantidad de caracteres de cada nombre
def names_size(array)
  sizes = array.map { |name| name.size }
end
