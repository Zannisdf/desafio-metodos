#Ejercicio 1
arreglo = [1,2,3,9,1,4,5,2,3,6,6]

puts arreglo.first
puts arreglo.last
arreglo.each { |elem| puts elem }
arreglo.each_with_index { |elem, index| puts "#{elem} tiene un índice de #{index}"}
arreglo.each_with_index { |elem, index| puts elem if index.even? }
