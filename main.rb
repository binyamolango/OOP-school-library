require "./app"

def main
  app = App.new()

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
  
  user_input = gets.chomp

  if user_input == 1
    app.list_all_books(app.all_books)
  elsif user_input == 2
    app.list_all_people(app.all_person)
  elsif user_input == 3
    app.create_a_person
  elsif user_input == 4
    app.create_a_book
  elsif user_input == 5
    app.create_a_rental(app.all_books, app.all_person)
  elsif user_input == 6
    app.list_all_rental(app.all_rentals)
  end
end

main()
