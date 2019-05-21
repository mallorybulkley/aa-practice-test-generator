describe "exponent" do
  it "returns the correct answer for positive exponents" do
    expect(exponent(5,3)).to eq(125)
  end

  it "returns the correct answer for negative exponents" do
    expect(exponent(2, -3)).to eq(1/8.0)
  end

  it "returns the correct answer when n is 0" do
    expect(exponent(2, 0)).to eq(1)
  end

  it "calls itself recursively" do
    expect(self).to receive(:exponent).at_least(:twice).and_call_original
    exponent(2, 3)
  end
end
