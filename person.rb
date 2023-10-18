require "./nameable.rb"

# Concrete component
class Person < Nameable
  attr_accessor :name, :age
  attr_reader :id, :parent_permission

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def of_age?
    return true if @age >= 18

    false
  end

  def correct_name
    @name
  end
end

def can_use_services?(person)
  return true if person.of_age? == true || person.parent_permission == true

  false
end

simple_person = Person.new(25, "Binyam")
puts "Name: #{simple_person.correct_name}"
