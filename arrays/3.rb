#Ejercicio 3
a = [1,2,3,9,1,4,5,2,3,6,6]

a.each { |n| a.delete n if n.even? }

sum = 0
a.each { |n| sum += n }

average = sum.to_f / a.length

new_a = a.map { |n| n + 1 }
