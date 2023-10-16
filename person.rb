class Person
  attr_reader :id, :name, :age, :parent_permission
  attr_writer :name, :age

  def initialize(age, name = "Unknown", parent_permission = true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def of_age?
    if @age >= 18
      return true
    else 
      return false
    end
  end
end

person = Person.new(14, "Binyam")

def can_use_services?(person)
  if person.of_age?() == true || person.parent_permission == true
    return true
  else
    return false
  end
end

# puts can_use_services?(person)
