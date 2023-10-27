require './person'
require './rental'
require './book'

describe Person do
  p = Person.new(21)
  p.name = 'May'
  p2 = Person.new(17)
  p2.name = 'Aye'
  context 'Creating a person' do
    it 'returns the correct name' do
      expect(p.name).to eq('May')
      expect(p2.name).to eq('Aye')
    end

    it 'returns the correct age' do
      expect(p.age).to eq(21)
      expect(p2.age).to eq(17)
    end

    it 'an adult?' do
      expect(p.of_age?).to eq(true)
      expect(p2.of_age?).to eq(false)
    end
    it 'a person can use service?' do
      expect(can_use_services?(p)).to eq(true)
      expect(can_use_services?(p2)).to eq(true)
    end
    it 'add rental to rentals array when add_rental method is called' do
      book = Book.new('Education', 'Ellen White')
      person = Person.new(25, 'Binyam')
      rental = Rental.new('20/10/2020', book, person)
      person.add_rental(rental)

      expect(person.rentals).to include rental
    end
  end
end
