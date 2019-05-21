describe "#factorials_rec" do
  it "returns first factorial number" do
    expect(factorials_rec(1)).to eq([1])
  end

  it "returns first two factorial numbers" do
    expect(factorials_rec(2)).to eq([1, 1])
  end

  it "returns many factorials numbers" do
    expect(factorials_rec(6)).to eq([1, 1, 2, 6, 24, 120])
  end

  it "calls itself recursively" do
    expect(self).to receive(:factorials_rec).at_least(:twice).and_call_original
    factorials_rec(6)
  end
end
