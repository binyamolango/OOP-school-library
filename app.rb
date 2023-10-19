require './book'
require './student'
require './teacher'
require './rental'

class App
  attr_accessor :all_books, :all_person, :all_rentals

  def initialize
    @all_person = []
    @all_books = []
    @all_rentals = []
  end

  def list_all_books(all_books)
    all_books.each do |book|
      puts "Title: \"#{book.title}\", Author: #{book.author}"
    end
  end

  def list_all_people(all_person)
    all_person.each do |person|
      if person.is_a?(Teacher)
        puts "[Teacher] Name: #{person.name}, Id: #{person.id}, Age: #{person.age}"
      else
        puts "[Student] Name: #{person.name}, Id: #{person.id}, Age: #{person.age}"
      end
    end
  end

  def create_a_person
    print "Do you want to create a student (1) or a teacher (2)? [Input the number]: "
    input_data = gets.chomp.to_i

    case input_data
    when 1
      print "Age: "
      age = gets.chomp.to_i
      print "Name: "
      name = gets.chomp
      print "Has parent permission? [Y/N]: "
      parent_permission = gets.chomp.upcase == 'Y'
      student = Student.new(age, name, parent_permission)
      @all_person << student
      puts "Person created successfully"
    when 2
      print "Age: "
      age = gets.chomp.to_i
      print "Name: "
      name = gets.chomp
      print "Specialization: "
      specialization = gets.chomp
      teacher = Teacher.new(age, specialization, name)
      @all_person << teacher
      puts "Person created successfully"
    else
      puts "Invalid option. Please choose either 1 or 2."
    end
  end

  def create_a_book
    print "Title: "
    title = gets.chomp
    print "Author: "
    author = gets.chomp
    book = Book.new(title, author)
    @all_books << book
    puts "Book created successfully"
  end

  def create_a_rental(all_books, all_person)
    puts "Select a book from the following list by number"
    all_books.each_with_index do |book, index|
      puts "#{index + 1}) Title: \"#{book.title}\", Author: #{book.author}"
    end
    selected_book_num = gets.chomp.to_i
    book = all_books[selected_book_num - 1]

    puts "Select a person from the following list by number (not id)"
    all_person.each_with_index do |person, index|
      if person.is_a?(Teacher)
        puts "#{index + 1}) [Teacher] Name: #{person.name}, Id: #{person.id}, Age: #{person.age}"
      else
        puts "#{index + 1}) [Student] Name: #{person.name}, Id: #{person.id}, Age: #{person.age}"
      end
    end
    selected_person_num = gets.chomp.to_i
    person = all_person[selected_person_num - 1]

    print "Date: "
    date = gets.chomp

    rental = Rental.new(date, book, person)
    book.add_rental(rental)
    @all_rentals << rental
    puts "Rental created successfully"
  end

  def list_all_rental(all_rentals)
    print "Id of person: "
    person_id = gets.chomp.to_i

    rentals_for_person = all_rentals.select { |rental| rental.person.id == person_id }

    if rentals_for_person.empty?
      puts "Rentals: No rentals found for person ID: #{person_id}"
    else
      puts "Rentals:"
      rentals_for_person.each do |rental|
        puts "Date: #{rental.date}, Book \"#{rental.book.title}\" by #{rental.book.author}"
      end
    end
  end
end
