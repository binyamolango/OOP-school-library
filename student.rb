require './person'

class Student < Person
  attr_accessor :classroom
  attr_reader :role

  def initialize(age, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @classroom = nil
    @role = 'Student'
  end

  def play_hooky
    '¯\\(ツ)/¯'
  end
end

s = Student.new(12, 'John Doe', parent_permission: true)
puts s.age
puts s.role
