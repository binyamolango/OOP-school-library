require './book'
require './people'
require './student'
require './teacher'

class App
  attr_accessor :all_books, :all_students, :all_teachers

  def initialize
    @all_students = []
    @all_teachers = []
    @all_books = []
  end

  def list_all_books(all_books)
    all_books.each do |book|
      puts "Title: \"#{book.title}\", Author: #{book.author}"
    end
  end

  def list_all_people(all_students, all_teachers)
    all_students.each do |student|
      puts "[Student] Name: #{student.name}, Id: #{student.id}, Age: #{student.age}"
    end
    all_teachers.each do |teacher|
      puts "[Teacher] Name: #{teacher.name}, Id: #{teacher.id}, Age: #{teacher.age}"
    end
  end

  def create_a_person
    print "Do you want to create a student (1) or A teacher (2)? [Input the number]: "
    input_data = get.chomp
    if input_data == 1
      print "Age: "
      age = get.chomp
      print "Name: "
      name = get.chomp
      print "Has parent permission? [Y/N]: "
      parent_permission = get.chomp
      parent_permission = parent_permission.upcase()
      if parent_permission == "Y"
        parent_permission = true
      elsif parent_permission == "N"
        parent_permission = false
      end
      student = Student.new(age, classroom = 1, name, parent_permission)
      puts "Person created successfully"
      all_students << student
    elsif input_data == 2
      print "Age: "
      age = get.chomp
      print "Name: "
      name = get.chomp
      print "Specialization: "
      specialization = get.chomp
      teacher = Teacher.new(age, specialization, name)
      puts "Person created successfully"
      all_teachers << teacher
    end
  end

  def create_a_book
    print "Title: "
    title = get.chomp
    print "Author: "
    author = get.chomp
    book = Book.new(title, author)
    puts "Book created Successfully"
    all_books << book
  end

  def create_a_rental(all_books)
    puts "Select a book from the following list by number"
    all_books.each do |book|
      i = 0
      puts "#{i}) Title: \"#{book.title}\", Author: #{book.author}"
      i++
    end
    num = get.chomp
  end
end
