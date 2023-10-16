class Person
  attr_reader :id, :name, :age
  attr_writer :name, :age

  def initialize(name = "Unknown", age, parent_permission = true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
  end

  def of_age?
    if @age >= 18
      true
    else false
    end
  end
end

def can_use_services?

end
