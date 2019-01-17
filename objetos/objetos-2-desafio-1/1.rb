class Cards
  attr_reader :color, :number
  def initialize(color, number)
    @color = color
    @number = number
  end
end

def create_hand(colors, numbers)
  hand = []
  5.times do
    hand.push Cards.new(colors.sample, numbers.sample)
  end
  hand
end

def show_hand(hand)
  puts hand.map { |card| "#{card.number} de #{card.color}"}
end

def menu
  puts (
'Escriba una opción:
jugar - Genera una mano de cinco cartas al azar.
mostrar - Muestra la mano actual.
salir - Cierra el programa.'
)
end

numbers = %w(A 2 3 4 5 6 7 8 9 10 J Q K)
colors = %w(Corazón Pica Trébol Diamante)

menu
action = gets.chomp
while action != 'salir'
  if action == 'jugar'
    hand = create_hand(colors, numbers)
  elsif action == 'mostrar'
    show_hand(hand)
  else
    puts 'Opción incorrecta.'
  end
  menu
  action = gets.chomp
end
puts 'Adios!'
