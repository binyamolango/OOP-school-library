require "./app"

def main
  app = App.new

  puts
  puts "Welcome to School Library App!"
  puts
  puts "Please choose an option by entering a number:"
  puts "1 - List all books"
  puts "2 - List all people"
  puts "3 - Create a person"
  puts "4 - Create a book"
  puts "5 - Create a rental"
  puts "6 - List all rentals for a given person id"
  puts "7 - Exit"

  loop do
    user_input = gets.chomp.to_i

    case user_input
    when 1
      app.list_all_books(app.all_books)
    when 2
      app.list_all_people(app.all_person)
    when 3
      app.create_a_person
    when 4
     app.create_a_book
    when 5
      app.create_a_rental(app.all_books, app.all_person)
    when 6
      app.list_all_rental(app.all_rentals)
    when 7
      puts "Thank you for using School Library App. Goodbye!"
      break
    else
      puts "Invalid option. Please choose a valid option."
    end

    puts
    puts "Please choose an option by entering a number:"
    puts "1 - List all books"
    puts "2 - List all people"
    puts "3 - Create a person"
    puts "4 - Create a book"
    puts "5 - Create a rental"
    puts "6 - List all rentals for a given person id"
    puts "7 - Exit"
  end
end

main()
