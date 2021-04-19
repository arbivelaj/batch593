require_relative "../frequencies"

describe "#frequencies" do
  it "returns an empty hash when passed an empty string" do
    actual = frequencies("")
    expected = {}
    expect(actual).to eq(expected)
  end

  it "returns the correct freq" do
    actual = frequencies("ac milan is the only team in milan")
    expect(actual["milan"]).to eq(2)
    expect(actual["ac"]).to eq(1)
  end
end