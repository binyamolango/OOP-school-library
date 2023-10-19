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
    puts "A Student (1) or A Teacher (2)? "
    input_data = get.chomp
    if input_data == 1
      puts "Enter Student's Name: "
      name = get.chomp
      puts "Enter Student's Age: "
      age = get.chomp
      puts "Enter Student's Classroom: "
      age = get.chomp
      student = Student.new(age, classroom, name)
      all_people << student
    elsif input_data == 2
      puts "Enter Teacher's Name: "
      name = get.chomp
      puts "Enter Teacher's Age: "
      age = get.chomp
      puts "Enter Teacher's Specialization: "
      age = get.chomp
      student = Student.new(age, specialization, name)
      all_people << teacher
    end
  end

  def create_a_book
    puts "Enter the book title: "
    title = get.chomp
    puts "Enter the book author: "
    author = get.chomp
    book = Book.new(title, author)
    all_books << book
  end
end
