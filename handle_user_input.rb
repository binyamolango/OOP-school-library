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