#Ejercicio 6
def draw_line(size)
  '*' * size
end

def draw_lines(size)
  size.times { puts draw_line(size) }
end

draw_lines(5)
