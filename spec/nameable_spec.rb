require './nameable'

describe Nameable do
  nameable = Nameable.new

  context "The nameable object" do
    it "should raise an implementation error when the correct_name method is called" do
      expect { nameable.correct_name }.to raise_error(NotImplementedError, "Nameable has not implemented method correct_name")
    end
  end
end
