require 'csv'
require 'student'

class Grader

  attr_reader :students

  def initialize(file)
    @students = []
    table = CSV.parse(File.read(file), headers: true)
    table.each { |row| @students.push(create_student(row)) }
  end
end

def create_student(row)
  Student.new(row['first_name'],
              row['last_name'],
              row['age'],
              row['english_grade'],
              row['math_grade'],
              row['physics_grade'])
end
