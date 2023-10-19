require './student'

class Classroom
  attr_accessor :label

  def initialize
    @label = []
  end

  def add_student(student)
    @label << student # this classroom has-many students
    student.classroom = self # many student belongs-to this classroom
  end
end
