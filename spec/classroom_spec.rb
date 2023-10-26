require './classroom'
require './student'

describe Classroom do
  class_a = Classroom.new('Class A')
  student1 = Student.new(25, 'Binyam')
  student2 = Student.new(26, 'Bereket')

  context 'A classroom object' do
    it "should return 'Class A' as its label" do
      expect(class_a.label).to eq 'Class A'
    end

    it 'should add students to students array when we call add_student method' do
      class_a.add_student(student1)
      class_a.add_student(student2)
      expect(class_a.students).to include student1
      expect(class_a.students).to include student2
    end
  end
end
