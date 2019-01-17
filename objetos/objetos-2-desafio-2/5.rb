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
    self.generate_hash(@number)
  end
end

m = Morseable.new(9)
puts m.to_morse
