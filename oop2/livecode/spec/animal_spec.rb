require_relative "../animal"

describe Animal do
  describe "#initialize" do
    it "creates an instance of animal" do
      pig = Animal.new("babe")
      expect(pig).to be_an(Animal)
    end
  end
  
  describe "#name" do
    it "returns the animal name" do
      pig = Animal.new("babe")
      expect(pig.name).to eq("babe")
    end
  end

  describe "::phyla" do
    it "returns an array of the four phyla" do
      expected = %w[Deuterostomia Ecdysozoa Lophotrochozoa Radiata]
      expect(Animal.phyla).to eq(expected)
    end
  end

  describe "#eat" do
    it "returns the correct sentence" do
      babe = Animal.new("babe")
      actual = babe.eat("pizza")
      expect(actual).to eq("babe eats a pizza")
    end
  end
end