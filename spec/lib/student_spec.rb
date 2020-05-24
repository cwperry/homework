RSpec.describe Student do
  describe 'constructor' do
    it 'should create a well formed student' do
      student = Student.new('Chester', 'Nimitz', 135, 99, 95 , 97)
      expect(student.first_name).to eq('Chester')
      expect(student.last_name).to eq('Nimitz')
      expect(student.age).to eq(135)
      expect(student.math_grade).to eq(99)
      expect(student.physics_grade).to eq(95)
      expect(student.average).to eq(97)
    end
  end
end
