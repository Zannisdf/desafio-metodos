#Ejercicio 8
a = ''
10.times do |i|
  (i + 1).even? ? i == 10 ? a += "#{i}par" : a += "#{i}par " : "#{i}impar "
end
puts a
