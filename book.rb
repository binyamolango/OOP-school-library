require './rental'

class Book
  attr_accessor :title, :author, :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(date, book, person)
    rental = Rental.new(date, book, person)
    @rentals << rental #has-many
    rental.book = self #belongs-to
  end
end
