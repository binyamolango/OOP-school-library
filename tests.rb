# TESTS FOR ADD_RENTAL
# require './book'
# require './student'
# require './rental'

# book1 = Book.new('Education', 'Ellen White')
# book2 = Book.new('The Alchemist', 'Paul Coleho')

# student1 = Student.new(25, 1, "Binyam")
# student2 = Student.new(28, 1, "Michael")
# student3 = Student.new(25, 2, "Mahilet")
# student4 = Student.new(26, 2, "Bereket")

# book1.add_rental('20-07-2023', book1, student1)
# book2.add_rental('17-12-2020', book2, student2)
# # student3.add_rental('28-11-2019', book1, student3)

# book2.rentals.each do |rental|
#   puts rental.date
# end

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
