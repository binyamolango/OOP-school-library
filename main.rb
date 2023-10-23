require './app'
require './display_menu_options'
require './handle_user_input'

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

def exit_program
  puts 'Thank you for using School Library App. Goodbye!'
  exit
end

main
