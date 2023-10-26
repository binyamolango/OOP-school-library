require './teacher'

describe Teacher do
  t1 = Teacher.new(36, "Computer", "Abiyu")

  context "A teacher object with appropriate parameters" do

    it "should return the correct age" do
      age = t1.age
      expect(age).to eq(36)
    end

    it "should return the correct name" do
      name = t1.name
      expect(name).to eq "Abiyu"
    end

    it "should return the correct specialization" do
      specialization = t1.specialization
      expect(specialization).to eq "Computer"
    end

    it "should return true for can_use_service? method" do
      expect(t1.can_use_services?).to be true
    end

  end
end
