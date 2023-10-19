require './book'
require './people'

def list_all_books(book)
  all_books = []
  all_books << book
  all_books.each do |single_book|
    puts single_book.title
  end
end

def list_all_people(people)
  all_people = []
  all_people << people
  all_people.each do |single_people|
    puts single_people.name
  end
end
