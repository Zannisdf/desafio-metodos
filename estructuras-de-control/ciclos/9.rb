#Ejercicio 9
def create_table(number_of_tds)
  i = 0
  puts "<table>\n\t<tbody>\n\t\t<tr>"
  while i < number_of_tds
    puts "\t\t\t<td>#{i}</td>"
    i += 1
  end
  puts "</table>\n\t</tbody>\n\t\t</tr>"
end

create_table(3)
