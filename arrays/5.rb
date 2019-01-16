products = %w(Producto1 Producto2 Producto3 Producto4)
prices = %w[1000 2000 1500 950]
html = ''
products.each_with_index do |prod, i|
  html += "<div class='product'>"
  html += "<p> #{prod} </p><p> Precio: #{prices[i]} </p>"
  html += "</div>\n"
end

puts html
