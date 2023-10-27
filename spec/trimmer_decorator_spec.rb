require './nameable'
require './person'

describe TrimmerDecorator do
  person1 = Person.new(26, 'berekethussien')
  trimmed_name = TrimmerDecorator.new(person1)

  context 'A trimmed_name object' do
    it 'should return a trimmed name when we call correct_name method' do
      expect(trimmed_name.correct_name).to eq 'berekethus'
    end
  end
end
