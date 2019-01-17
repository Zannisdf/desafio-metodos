#Ejercicio 1
class Anything
  def foo
    @a = 5
  end
  def bar
    @a = 5
  end
end

#Ejercicio 2
class Car
  attr_reader :model, :year
  def initialize(model, year)
    @model = model
    @year = year
  end
end

car = Car.new('Camaro', 2016)
puts "Mi auto es un #{car.model} del año #{car.year}."

#Ejercicio 3
class Store
  attr_reader :name
  def initialize(name)
    @name = name
  end
end
store = Store.new('Tienda 1')
puts store.name

#Ejercicio 4
propiedades = { nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café' }

class Dog
  def initialize(propiedades)
    @nombre = propiedades[:nombre]
    @raza = propiedades[:raza]
    @color = propiedades[:color]
  end
  def ladrar
    puts "#{@nombre} está ladrando!"
  end
end

perro = Dog.new(propiedades)
perro.ladrar

#Ejercicio 5
class Morseable
  def initialize(number)
    @number = number
  end

  def generate_hash(number)
    hash = {}
    10.times do |i|
      hash[i] = number <= 5 ? "#{'.' * number }#{'-' * (5 - number)}" : "#{'-' * (number - 5) }#{'.' * (10 - number)}"
    end
    hash[number]
  end

  def to_morse
    generate_hash(@number)
  end
end

m = Morseable.new(9)
puts m.to_morse

#Ejercicio 6
class Student
  attr_accessor :name
  attr_reader :grade
  def initialize(name, grade)
    @name = name
    @grade = grade
  end
end

names = %w(Alicia Javier Camila Francisco Pablo Josefina)
students = names.map.with_index { |name, i| Student.new(name, i + 1) }
students.map { |student| puts "#{student.name}: #{student.grade}"}
