#Ejercicio 2
class MiClase
  attr_accessor :name
  def initialize(name)
    @name = name
  end

  def self.saludar
    "Hola! soy la clase #{self}"
  end
end

c = MiClase.new('Clase Uno')
puts c.name
c.name = 'Nombre Nuevo'
puts MiClase.saludar
