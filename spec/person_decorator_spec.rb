require './person'
require './nameable'

describe Person do
  person1 = Person.new(25, "Binyam")
  nameable = PersonDecorator.new(person1)

  context "The object nameable" do

    it "should return the correct object which is passed as a parameter" do
      expect(nameable.nameable.name).to eq "Binyam"
    end

    it "should return the correct name of the person1 when the correct_name method is called" do
      expect(nameable.correct_name).to eq "Binyam"
    end

  end
end
