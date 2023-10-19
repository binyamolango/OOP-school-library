require './book'
require './student'
require './teacher'
require './rental'

class App
  attr_accessor :all_books, :all_person

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
      if person.respond_to?(specialization)
        puts "[Teacher] Name: #{person.name}, Id: #{person.id}, Age: #{person.age}"
      else
        puts "[Student] Name: #{person.name}, Id: #{person.id}, Age: #{person.age}"
      end
    end
  end

  def create_a_person
    print "Do you want to create a student (1) or A teacher (2)? [Input the number]: "
    input_data = gets.chomp
    if input_data == 1
      print "Age: "
      age = gets.chomp
      print "Name: "
      name = gets.chomp
      print "Has parent permission? [Y/N]: "
      parent_permission = gets.chomp
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
      age = gets.chomp
      print "Name: "
      name = gets.chomp
      print "Specialization: "
      specialization = gets.chomp
      teacher = Teacher.new(age, specialization, name)
      puts "Person created successfully"
      all_teachers << teacher
    end
  end

  def create_a_book
    print "Title: "
    title = gets.chomp
    print "Author: "
    author = gets.chomp
    book = Book.new(title, author)
    puts "Book created Successfully"
    all_books << book
  end

  def create_a_rental(all_books, all_person)
    puts "Select a book from the following list by number"
    all_books.each_with_index do |book, index|
      puts "#{index + 1}) Title: \"#{book.title}\", Author: #{book.author}"
    end
    selected_book_num = gets.chomp
    book = all_books[selected_book_num]

    puts "Select a person from the following list by number (not id)"
    all_person.each_with_index do |person, index|
      if person.respond_to?(specialization)
        puts "#{index + 1}) [Teacher] Name: #{person.name}, Id: #{person.id}, Age: #{person.age}"
      else
        puts "#{index + 1}) [Student] Name: #{person.name}, Id: #{person.id}, Age: #{person.age}"
      end
    end
    selected_person_num = gets.chomp
    person = all_person[selected_person_num]

    print "Date: "
    date = gets.chomp

    rental = Rental.new(date, book, person)
    book.add_rental(rental)
    all_rentals << rental
    puts "Rental created successfully"
  end

  def list_all_rental(all_rentals)
    print "Id of person: "
    person_id = gets.chomp

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
