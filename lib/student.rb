class Student

  attr_reader :first_name,
              :last_name,
              :age,
              :english_grade,
              :math_grade,
              :physics_grade

  def initialize(first_name, last_name, age, english_grade, math_grade, physics_grade)
    @first_name = first_name
    @last_name = last_name
    @age = age
    @english_grade = english_grade
    @math_grade = math_grade
    @physics_grade = physics_grade
  end

  def name
    @first_name + ' ' + @last_name
  end

  def average
    grades = [@english_grade, @math_grade, @physics_grade]
    grades.reduce(:+) / grades.size
  end

end
