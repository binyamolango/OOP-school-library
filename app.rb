require './book'
require './student'
require './teacher'
require './rental'
require './person'
require './nameable'
require './write'
require './read'

class App
  attr_accessor :all_books, :all_person, :all_rentals

  def initialize
    @all_person = []
    @all_books = []
    @all_rentals = []
  end

  def person_json
    data = @all_person.map do |person|
      {
        name: person.name,
        id: person.id,
        age: person.age,
        role: person.role
      }
    end
    write_file(data, 'person.json')
  end

  def book_json
    data = @all_books.map do |book|
      {
        title: book.title,
        author: book.author
      }
    end
    write_file(data, 'book.json')
  end

  def rental_json
    data = @all_rentals.map do |rental|
      {
        date: rental.date,
        book: {
          title: rental.book["title"],
          author: rental.book["author"]
        },
        person: {
          name: rental.person["name"],
          id: rental.person["id"],
          age: rental.person["age"],
          role: rental.person["role"]
        }
      }
    end
    write_file(data, 'rental.json')
  end

  # list all books
  def list_all_books
    return puts "No book found!" unless File.exist?('book.json') && !File.empty?('book.json')
    data = read_file('book.json')
    data.each do |book|
      puts "Title: \"#{book["title"]}\", Author: #{book["author"]}"
    end
  end

  # list all people
  def list_all_people
    return puts "No person found!" unless File.exist?('person.json') && !File.empty?('person.json')
    data = read_file('person.json')
      data.each do |person|
        if person.is_a?(Teacher)
          puts "[Teacher] Name: #{person["name"]}, Id : #{person["id"]}, Age: #{person["age"]}"
        else
          puts "[Student] Name: #{person["name"]}, Id : #{person["id"]}, Age: #{person["age"]}"
        end
      end
  end

  # Create a person
  def create_a_person
    print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
    input_data = gets.chomp.to_i

    case input_data
    when 1
      create_student
    when 2
      create_teacher
    else
      puts 'Invalid option. Please choose either 1 or 2.'
    end
  end

  def create_student
    print 'Age: '
    age = gets.chomp.to_i

    print 'Name: '
    name = gets.chomp

    print 'Has parent permission? [Y/N]: '
    parent_permission = gets.chomp.upcase == 'Y'

    student = Student.new(age, name, parent_permission: parent_permission)

    student.name = CapitalizeDecorator.new(TrimmerDecorator.new(student)).correct_name

    if can_use_services?(student)
      @all_person << student
      person_json
      puts 'Person created successfully'
    else
      puts 'Student can not use the service'
    end
  end

  def create_teacher
    print 'Age: '
    age = gets.chomp.to_i

    print 'Name: '
    name = gets.chomp

    print 'Specialization: '
    specialization = gets.chomp

    teacher = Teacher.new(age, specialization, name)

    teacher.name = CapitalizeDecorator.new(TrimmerDecorator.new(teacher)).correct_name

    @all_person << teacher
    person_json
    puts 'Person created successfully'
  end

  # Create a book
  def create_a_book
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    book = Book.new(title, author)
    @all_books << book
    book_json
    puts 'Book created successfully'
  end

  # Create a rental
  def create_a_rental
    books = read_file('book.json')
    display_book_list(books)
    selected_book_num = select_book(books)

    people = read_file('person.json')
    display_person_list(people)
    selected_person_num = select_person(people)

    print 'Date: '
    date = gets.chomp

    create_rental(date, books[selected_book_num - 1], people[selected_person_num - 1])
  end

  def display_book_list(books)
    puts 'Select a book from the following list by number'
    books.each_with_index do |book, index|
      puts "#{index + 1}) Title: \"#{book["title"]}\", Author: #{book["author"]}"
    end
  end

  def select_book(_books)
    gets.chomp.to_i
  end

  def display_person_list(people)
    puts 'Select a person from the following list by number (not id)'
    people.each_with_index do |person, index|
      type = person.is_a?(Teacher) ? '[Teacher]' : '[Student]'
      puts "#{index + 1}) #{type} Name: #{person["name"]}, Id: #{person["id"]}, Age: #{person["age"]}"
    end
  end

  def select_person(_people)
    gets.chomp.to_i
  end

  def create_rental(date, book, person)
    rental = Rental.new(date, book, person)
    @all_rentals << rental
    rental_json
    puts 'Rental created successfully'
  end

  def list_all_rental
    return puts "No rental found!" unless File.exist?('rental.json') && !File.empty?('rental.json')
    print 'Id of person: '
    person_id = gets.chomp.to_i

    data = read_file('rental.json')

    rentals_for_person = data.select { |rental| rental["person"]["id"] == person_id }

    if rentals_for_person.empty?
      puts "Rentals: No rentals found for person ID: #{person_id}"
    else
      puts 'Rentals:'
      rentals_for_person.each do |rental|
        puts "Date: #{rental["date"]}, Book \"#{rental["book"]["title"]}\" by #{rental["book"]["author"]}"
      end
    end
  end
end
