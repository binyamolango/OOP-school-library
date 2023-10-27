require './book'
require './rental'
require './person'

describe Book do
  book = Book.new('Saung', 'Hnin')

  context 'Creating a book' do

    it 'should create a book properly' do
      expect(book.title).to eq('Saung')
      expect(book.author).to eq('Hnin')
    end

    it 'should add books to the rentals array when add_rental method is called' do
      person = Person.new(28, "Michael")
      rental = Rental.new("20/10/2020", book, person)
      book.add_rental(rental)
      expect(book.rentals).to include rental
    end
  end
end
