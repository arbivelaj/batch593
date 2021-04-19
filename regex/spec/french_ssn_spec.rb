require_relative "../french_ssn"

describe "#ssn" do
  it "returns 'the number is invalid' when the code is not an SSN" do
    actual = ssn("123")
    expected = 'the number is invalid'
    expect(actual).to eq(expected)
  end

  it "returns the right sentence from an SSN" do
    actual = ssn("1 84 12 76 451 089 46")
    expected = "a man, born in December, 1984 in Seine-Maritime."
    expect(actual).to eq(expected)
  end
end