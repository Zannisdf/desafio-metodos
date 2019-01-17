class MyPet
  attr_reader :alive
  def initialize name
    @name = name
    @sleep = false
    @satisfied = 10 # Esta lleno
    @fullIntestine = 0 # No necesita ir
    puts @name + ' nace '
    @alive = true
  end

  def hungry?
    @satisfied < 4
  end

  def needToGo?
    @fullIntestine > 6
  end

  def walk
    @sleep = false
    puts 'Haces caminar a ' + @name + '.'
    @satisfied -= 2
    @fullIntestine = 2
    timeLapse
  end

  def eat
    @sleep = false
    puts 'Ñom ñom ñom'
    @satisfied = 10
    timeLapse
  end

  def sleep
    puts 'zZzz...'
    @sleep = true
    timeLapse
  end

  def timeLapse
    if @satisfied > 0
      # Mueve el alimento del estomago al intestino.
      @satisfied = @satisfied - 1
      @fullIntestine = @fullIntestine + 1
    else # Nuestro mascota esta hambrienta!
      if @sleep
        @sleep = false
        puts '¡Se despierta de repente!'
      end
      puts '¡' + @name + ' esta hambriento! En su desesperacion, ¡Murio de Hambre!'
      @alive = false # Sale del programa.
    end

    if @fullIntestine >= 10
      @fullIntestine = 0
      puts '¡Uy! ' + @name + ' tuvo un accidente...'
    end

    if hungry?
      if @sleep
        @sleep = false
        puts '¡Se despierta de repente!'
      end
      puts 'El estomago de ' + @name + 'retumba...'
    end
    if needToGo?
      if @sleep
        @sleep = false
        puts 'Se despierta de repente!'
      end
      puts @name + ' hace la danza del baño...'
    end
  end
end

puts 'Ingresa el nombre de tu mascota:'
pet = MyPet.new(gets.chomp)
while pet.alive
  puts(
'Ingresa una acción:
1) Alimentar a tu mascota.
2) Dormir.
3) Salir a caminar.')
  action = gets.to_i
  if action == 1
    pet.eat
  elsif action == 2
    pet.sleep
  elsif action == 3
    pet.walk
  else
    puts 'Ingresa una opción válida'
  end
end
