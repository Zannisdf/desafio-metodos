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
