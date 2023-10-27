require './rental'
require './book'
require './person'

describe Rental do
  book1 = Book.new('Education', 'Ellen White')
  person1 = Person.new(25, 'Binyam')
  rental_a = Rental.new('20/10/2020', book1, person1)

  context 'A rental_a object' do
    it 'should return the correct date of rental' do
      expect(rental_a.date).to eq '20/10/2020'
    end

    it 'should return the correct title of the rented book' do
      expect(rental_a.book.title).to eq 'Education'
    end

    it 'should return the correct name of the person who rented it' do
      expect(rental_a.person.name).to eq 'Binyam'
    end
  end
end
