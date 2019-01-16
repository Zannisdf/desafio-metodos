#Ejercicio 5
def even_numbers_between(n_1, n_2)
  while n_1 <= n_2
    puts n_1 if n_1.even?
    n_1 +=1
  end
end
