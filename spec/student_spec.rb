require './student'

describe Student do
  s = Student.new(21, 'May')

  context 'Creating a student' do
    it "Is the student's information correct?" do
      expect(s.age).to eq(21)
      expect(s.name).to eq('May')
    end

    it 'should return the proper symbol when play_hooky method is called' do
      expect(s.play_hooky).to eq '¯\\(ツ)/¯'
    end
  end
end
