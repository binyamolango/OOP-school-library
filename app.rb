require './book'
require './people'
require './student'
require './teacher'

class App
  attr_accessor :all_books, :all_people

  def initialize
    @all_people = []
    @all_books = []
  end

  def list_all_books(book)
    all_books.each do |single_book|
      puts single_book.title
    end
  end

  def list_all_people(all_people)
    all_people.each do |single_people|
      puts single_people.name
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
      all_people << student
    elsif input_data == 2
      print "Age: "
      age = get.chomp
      print "Name: "
      name = get.chomp
      print "Specialization: "
      specialization = get.chomp
      teacher = Teacher.new(age, specialization, name)
      puts "Person created successfully"
      all_people << teacher
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

  def create_a_rental
    
  end
end
