require_relative "../meerkat"

describe Meerkat do
  describe "#talk" do
    it "return the sound of the animal" do
      timon = Meerkat.new("timon")
      expect(timon.talk).to eq("timon barks")
    end
  end
end