# TESTS FOR ADD_RENTAL
require './book'
require './student'
require './rental'

book = Book.new('Title', 'Author')
person = Person.new('John')
rental = Rental.new('2023-10-19', book, person)

book.add_rental(rental)

book.rentals.each do |rental_item|
  puts rental_item.date
  puts rental_item.book.title
  puts rental_item.person.name
end

# TESTS FOR ADDING STUDENT IN CLASSROOM
# require "./person.rb"
# require "./classroom.rb"
# require "./student.rb"

# class1 = Classroom.new
# class2 = Classroom.new

# student1 = Student.new(25, 1, "Binyam")
# student2 = Student.new(28, 1, "Michael")
# student3 = Student.new(25, 2, "Mahilet")
# student4 = Student.new(26, 2, "Bereket")

# class1.add_student(student1)
# class1.add_student(student2)
# class2.add_student(student3)
# class2.add_student(student4)

# class2.label.each do |student|
#   puts student.name
# end

# puts student3.classroom.inspect


# TESTS FOR DECORATORS
# require './person'
# require './nameable'

# person = Person.new(22, 'maximilianus')
# person.correct_name
# capitalized_person = CapitalizeDecorator.new(person)
# puts capitalized_person.correct_name
# capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
# puts capitalized_trimmed_person.correct_name
