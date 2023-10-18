require "./person.rb"
require "./nameable.rb"

simple_person = Person.new(25, "Binyam")
puts "Name: #{simple_person.correct_name}"
upper_case = CapitalizeDecorator.new(simple_person)
puts "NameUpcase: #{upper_case.correct_name}"