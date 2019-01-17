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
