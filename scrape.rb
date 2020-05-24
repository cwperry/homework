require './lib/grader'
require 'terminal-table'

file = File.open('./files/grades.csv')
grader = Grader.new(file)

table = Terminal::Table.new do |t|
  t << %w[Name English Math Physics Average]
  t << :separator

  grader.students.each do |student|
    t << [student.name,
          student.english_grade,
          student.math_grade,
          student.physics_grade,
          student.average]

    if grader.students.index(student) != grader.students.size - 1
      t << :separator
    end

  end
end

puts table
