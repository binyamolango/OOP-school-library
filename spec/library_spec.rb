require './book'
describe Book do
  context 'Creating a book' do
    it 'Is a book created?' do
      book = Book.new('Saung', 'Hnin')
      expect(book.title).to eq('Saung')
      expect(book.author).to eq('Hnin')
    end
  end
end
