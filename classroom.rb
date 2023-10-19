require "./student.rb"

class Classroom
  attr_accessor :label

  def initialize
    @label = []
  end

  def add_student(student)
    @label << student   # has-many
    student.classroom = self  # belongs-to
  end
end
