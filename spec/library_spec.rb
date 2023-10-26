require './book'
require './person'
require './student'

describe Book do
  context 'Creating a book' do
    it 'Is a book created?' do
      book = Book.new('Saung', 'Hnin')
      expect(book.title).to eq('Saung')
      expect(book.author).to eq('Hnin')
    end
  end
end

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
  end

  describe Student do
    context 'Creating a student' do
      it "Is the student's information correct?" do
        s = Student.new(21)

        s.name = 'May'
        expect(s.age).to eq(21)
        expect(s.name).to eq('May')
      end
    end
  end
end
