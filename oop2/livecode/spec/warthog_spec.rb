require_relative "../warthog"

describe Warthog do
  describe "#talk" do
    it "return the sound of the animal" do
      pumbaa = Warthog.new("pumbaa")
      expect(pumbaa.talk).to eq("pumbaa grunts")
    end
  end
end