#Ejercicio 1
class MiClase
  def de_instancia
    puts 'Método de instancia!'
  end
  def self.de_clase
    puts 'Método de clase!'
  end
end

MiClase.new.de_instancia
MiClase.de_clase

#Ejercicio 2
class MiClase
  attr_accessor :name
  def initialize(name)
    @name = name
  end

  def self.saludar
    "Hola! soy la clase #{@name}"
  end
end

c = MiClase.new('Clase Uno')
puts c.name
c.name = 'Nombre Nuevo'
puts MiClase.saludar

#Ejercicio 3
class Vehicle
  def initialize(model, year)
    @model = model
    @year = year
    @start = false
  end
  def engine_start
    @start = true
  end
end

class Car < Vehicle
  @@instance_count = 0
  attr
  def initialize(model,year)
    super
    @@instance_count += 1
  end

  def self.show_instances
    @@instance_count
  end

  def engine_start
    super
    puts 'El motor se ha encendido!'
  end
end

models = %w(Camaro Diablo Sail Fiesta Yaris Aveo Corolla XV Impreza 3)

10.times { |i| Car.new(models[i], 2008 + i)}

puts Car.show_instances

#Ejercicio 4
class Alumno
  def initialize(nombre, nota1, nota2, nota3, nota4)
    @nombre = nombre
    @nota1 = nota1
    @nota2 = nota2
    @nota3 = nota3
    @nota4 = nota4
  end
  def self.read_file(file_name = 'notas.txt')
    alumnos = []
    data = []
    File.open(file_name, 'r') { |file| data = file.readlines }
    data.each do |alumno|
      alumnos << Alumno.new(*alumno.split(', '))
    end
  end
end

print Alumno.read_file

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
