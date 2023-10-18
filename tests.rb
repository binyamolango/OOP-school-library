require "./person.rb"
require "./nameable.rb"

simple_person = Person.new(25, "Binyamjfkdlskjdkllllllllllfjdksl")
puts "Name: #{simple_person.correct_name}"
upper_case = CapitalizeDecorator.new(simple_person)
puts "Name-Upcase: #{upper_case.correct_name}"
upper_case_truncate_word = TrimmerDecorator.new(upper_case)
puts "Name-Upcase-Truncate: #{upper_case_truncate_word.correct_name}"