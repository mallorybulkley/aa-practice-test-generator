describe "#make_better_change" do
  it "returns the smallest possible array of coins I" do
    expect(make_better_change(24, [10,7,1])).to match_array([10,7,7])
  end

  it "returns the smallest possible array of coins II" do
    expect(make_better_change(25, [10,7,1])).to match_array([10,7,7,1])
  end

  it "returns the smallest possible array of coins III" do
    expect(make_better_change(25, [10,8,7,1])).to match_array([10,8,7])
  end

  it "calls itself recursively" do
    expect(self).to receive(:make_better_change).at_least(:twice).and_call_original
    make_better_change(25, [10,8,7,1])
  end
end
