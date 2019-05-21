describe "#factors" do
  it "returns the factors of 10 in order" do
    expect(factors(10)).to eq([1, 2, 5, 10])
  end

  it "returns just two factors for primes" do
    expect(factors(13)).to eq([1, 13])
  end

  it "returns nil for numbers less than zero" do
    expect(factors(-5)).to eq(nil)
  end

  it "returns [1] when finding factors of 1" do
    expect(factors(1)).to eq([1])
  end
end
