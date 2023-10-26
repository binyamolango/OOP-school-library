require './nameable'
require './person'

describe CapitalizeDecorator do
  person1 = Person.new(26, "berekethussien")
  capitalized_name = CapitalizeDecorator.new(person1)
  trimmed_name = TrimmerDecorator.new(capitalized_name)
  
  context "A capitalized_name object" do

    it "should return a capitilized name when we call correct_name method" do
      expect(capitalized_name.correct_name).to eq "Berekethussien"
    end

  end

  context "A trimmed_name object" do

    it "should return a trimmed name when we call correct_name method" do
      expect(trimmed_name.correct_name).to eq "Berekethus"
    end

  end
end
