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
