#Ejercicio 3
#Usando while
i = 1
while i < 990
  puts i if 990 % i == 0
  i += 1
end
#Usando for
for i in 1..990 do
  puts i if 990 % i == 0
end
#Usando times
990.times { puts i if i != 0 && 990 % i == 0 }
