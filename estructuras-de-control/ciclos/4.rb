#Ejercicio 4
a = 5
b = "<ul>\n"
a.times do |i|
  b += "<ul>\n" if i == 0
  b += "\t<li> hola </li>\n"
  b += "</ul>\n" if i == a
end
