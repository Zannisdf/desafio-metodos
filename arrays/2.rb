#Ejercicio 2
a = [1,2,3,9,1,4,5,2,3,6,6]

a.pop
a.shift
a.delete_at(((a.length-1)/2).to_i)
while a.last != 1
  a.pop
end

b = []
a.length.times { b.push a.pop }
