require './write'
require './app'

def person_json
  data =
    {
      name: @all_person.name,
      id: @all_person.id,
      age: @all_person.age,
      role: @all_person.role
    }
  write_file(data, 'person.json')
end

def book_json
  data =
    {
      title: @all_books.title,
      author: @all_books.author
    }

  write_file(data, 'book.json')
end

def rental_json
  data =
    {
      date: @all_rentals.date,
      book: {
        title: @all_rentals.book['title'],
        author: @all_rentals.book['author']
      },
      person: {
        name: @all_rentals.person['name'],
        id: @all_rentals.person['id'],
        age: @all_rentals.person['age'],
        role: @all_rentals.person['role']
      }
    }
  write_file(data, 'rental.json')
end
