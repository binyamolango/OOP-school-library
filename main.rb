require './app'

def main
  puts
  puts 'Welcome to School Library App!'
  puts

  main_extended
end

def main_extended
  app = App.new

  loop do
    display_menu_options

    user_input = gets.chomp.to_i

    handle_user_input(user_input, app)

    puts
  end
end

def display_menu_options
  puts 'Please choose an option by entering a number:'
  puts '1 - List all books'
  puts '2 - List all people'
  puts '3 - Create a person'
  puts '4 - Create a book'
  puts '5 - Create a rental'
  puts '6 - List all rentals for a given person id'
  puts '7 - Exit'
end

def handle_user_input(user_input, app)
  actions = {
    1 => -> { app.list_all_books(app.all_books) },
    2 => -> { app.list_all_people(app.all_person) },
    3 => -> { app.create_a_person },
    4 => -> { app.create_a_book },
    5 => -> { app.create_a_rental(app.all_books, app.all_person) },
    6 => -> { app.list_all_rental(app.all_rentals) },
    7 => -> { exit_program }
  }

  action = actions[user_input]
  if action
    action.call
  else
    puts 'Invalid option. Please choose a valid option.'
  end
end

def exit_program
  puts 'Thank you for using School Library App. Goodbye!'
  exit
end

main
