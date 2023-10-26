require './student'

describe Student do
  context 'Creating a student' do
    it "Is the student's information correct?" do
      s = Student.new(21)

      s.name = 'May'
      expect(s.age).to eq(21)
      expect(s.name).to eq('May')
    end
  end
end
