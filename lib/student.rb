class Student

  attr_reader :age,
              :average,
              :physics_grade,
              :math_grade,
              :first_name,
              :last_name

  def initialize(first_name, last_name, age, math_grade, physics_grade, average)
    @first_name = first_name
    @last_name = last_name
    @age = age
    @math_grade = math_grade
    @physics_grade = physics_grade
    @average = average
  end
end
