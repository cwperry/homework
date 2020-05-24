RSpec.describe Grader do
  describe 'constructor' do
    it 'should convert the provided file into a csv and create student instances from the data' do
      file = File.open('./spec/files/test_grades.csv')
      grader = Grader.new(file)

      expect(grader.students.size).to eq(3)
      expect(grader.students[0].name).to eq('Chester Nimitz')
      expect(grader.students[0].average).to eq(93)
      expect(grader.students[1].name).to eq('Raymond Spruance')
      expect(grader.students[1].average).to eq(91)
      expect(grader.students[2].name).to eq('Charles Lockwood')
      expect(grader.students[2].average).to eq(90)
    end
  end
end
