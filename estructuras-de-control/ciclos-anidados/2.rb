str = "<table>\n\t<tbody>\n"
count = 1
3.times do
  str += "\t\t<tr>\n"
  4.times do
    str += "\t\t\t<td> #{count} </td>\n"
    count += 1
  end
  str += "\t\t</tr>\n"
end

str += "\t</tbody>\n</table>"

puts str
