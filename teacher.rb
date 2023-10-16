require "./person.rb"

class Teacher < Person
  def initialize(specialization)
    super(27, "Abiyu")
    @specialization = specialization
  end

  
end