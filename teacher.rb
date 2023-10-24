require './person'

class Teacher < Person
  attr_reader :specialization, :role

  def initialize(age, specialization, name = 'Unknown')
    super(age, name)
    @specialization = specialization
    @role = 'Teacher'
  end

  def can_use_services?
    true
  end
end
