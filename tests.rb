require "./person.rb"
require "./classroom.rb"
require "./student.rb"

class1 = Classroom.new
class2 = Classroom.new

student1 = Student.new(25, 1, "Binyam")
student2 = Student.new(28, 1, "Michael")
student3 = Student.new(25, 2, "Mahilet")
student4 = Student.new(26, 2, "Bereket")

class1.add_student(student1)
class1.add_student(student2)
class2.add_student(student3)
class2.add_student(student4)

class2.label.each do |student|
  puts student.name
end

puts student3.classroom.inspect
