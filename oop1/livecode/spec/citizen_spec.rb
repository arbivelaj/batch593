require_relative "../citizen"

describe Citizen do
  describe "#full_name" do
    it "returns the well-formatted full name" do
      isabella = Citizen.new("iSaBeLLa", "Hoesch", 18)
      expected = "Isabella Hoesch"
      actual = isabella.full_name
      expect(actual).to eq(expected)
    end 
  end

  describe "#can_drink?" do
    it "returns true if the person is old enough" do
      arbi = Citizen.new("","",27)
      expected = true
      actual = arbi.can_drink?
      expect(actual).to eq(expected)
    end

    it "returns false if the person is too young" do
      isabella = Citizen.new("","",17)
      expected = false
      actual = isabella.can_drink?
      expect(actual).to eq(expected)
    end
  end
end