require './nameable'
require './person'

describe CapitalizeDecorator do
  person1 = Person.new(26, 'bereket')
  capitalized_name = CapitalizeDecorator.new(person1)

  context 'A capitalized_name object' do
    it 'should return a capitilized name when we call correct_name method' do
      expect(capitalized_name.correct_name).to eq 'Bereket'
    end
  end
end
