puts 'Ingrese un número (0 para salir):'
n = gets.to_i

while n != 0
  i = 0
  while i <= 12
    puts "#{n} * #{i} es #{n*i}"
    i += 1
  end
  puts 'Ingrese un número (0 para salir):'
  n = gets.to_i
end

puts 'Adios!' if n == 0
