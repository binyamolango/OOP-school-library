require "./person.rb"

class Teacher < Person
  attr_accessor :specialization

  def initialize(specialization)
    super(37, "Abiyu")
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end

teacher1 = Teacher.new("Computer Engineering")
puts teacher1.specialization
