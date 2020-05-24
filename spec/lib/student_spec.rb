RSpec.describe Student do
  student = Student.new('Chester', 'Nimitz', 135, 99, 95, 97)

  describe 'constructor' do
    it 'should create a well formed student' do
      expect(student.first_name).to eq('Chester')
      expect(student.last_name).to eq('Nimitz')
      expect(student.age).to eq(135)
      expect(student.english_grade).to eq(99)
      expect(student.math_grade).to eq(95)
      expect(student.physics_grade).to eq(97)
    end
  end

  describe 'name method' do
    it 'should concatenate first_name and last_name' do
      expect(student.name).to eq('Chester Nimitz')
    end
  end
end
