require "./person.rb"

class Student < Person
  attr_accessor :classroom

  def initialize(classroom)
    super(25, "Bereket")
    @classroom = classroom
  end

  def play_hooky
    "¯\\(ツ)/¯"
  end
end

student1 = Student.new("6 A")
puts student1.name
