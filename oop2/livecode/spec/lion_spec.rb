require_relative "../lion"

describe Lion do
  describe "#talk" do
    it "return the sound of the animal" do
      simba = Lion.new("simba")
      expect(simba.talk).to eq("simba roars")
    end
  end

  describe "#eat" do
    it "returns the correct sentence + law of the Jungle" do
      simba = Lion.new("simba")
      actual = simba.eat("gazelle")
      expect(actual).to eq("simba eats a gazelle. Law of the Jungle!")
    end
  end
end