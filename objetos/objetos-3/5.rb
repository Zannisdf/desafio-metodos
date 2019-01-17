#Ejercicio 5
class Rectangulo
  def initialize(largo, ancho)
    @largo = largo
    @ancho = ancho
  end
  def lados
    puts "Mis lados miden #{largo} y #{ancho}"
  end
  def perimetro
    2 * @largo + 2 * @ancho
  end
  def area
    @largo * @ancho
  end
end

class Cuadrado
  def initialize(lado)
    @lado = lado
  end
  def lados
    puts "Mis lados miden #{@lado}"
  end
  def perimetro
    4 * @lado
  end
  def area
    @lado * @lado
  end
end

square = Cuadrado.new(2)
rect = Rectangulo.new(2,5)

puts square.area
puts square.perimetro
puts rect.area
puts rect.perimetro
