require "./person.rb"
require "./classroom.rb"
require "./student.rb"

class1 = Classroom.new

student1 = Student.new(25, 1, "Binyam")
student2 = Student.new(26, 1, "Bereket")

class1.add_student(student1)
class1.add_student(student2)

class1.label.each do |student|
  puts student.name
end
