require_relative "../acronymize"

describe "#acronymize" do
  it "returns an empty string when passed an empty string" do
    # Expected VS Actual
    expected = ""
    actual = acronymize("")
    expect(actual).to eq(expected)
  end
  
  it "returns the acronym of an upcased sentence" do
    expected = "BRB"
    actual = acronymize("BE RIGHT BACK")
    expect(actual).to eq(expected)
  end

  it "returns the acronym of an downcased sentence" do
    expected = "AFK"
    actual = acronymize("away from keyboard")
    expect(actual).to eq(expected)
  end
end