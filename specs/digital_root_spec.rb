describe "#digital_root" do
  it "calculates the digital root of a single-digit number" do
    expect(digital_root(9)).to eq(9)
  end

  it "calculates the digital root of a larger number" do
    expect(digital_root(4322)).to eq(2)
  end

  it "does not call #to_s on the argument" do
    expect_any_instance_of(Fixnum).to_not receive(:to_s)
    digital_root(4322)
  end
end
