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
grades = students.map { |student| "#{student.name}: #{student.grade}"}

puts grades
