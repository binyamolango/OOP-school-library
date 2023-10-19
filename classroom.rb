require './student'

class Classroom
  attr_accessor :label

  def initialize(label)
    @label = label
    @students = []
  end

  def add_student(student)
    @students << student # this classroom has-many students
    student.classroom = self # many student belongs-to this classroom
  end
end
