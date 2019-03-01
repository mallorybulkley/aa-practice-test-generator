describe "#base_converter" do
  it "converts a small number in binary" do
    expect(base_converter(5, 2)).to eq("101")
  end

  it "converts a large number into base 16" do
    expect(base_converter(1239449, 16)).to eq("12e999" || "12E999")
  end

  it "returns 0 if the number is 0, regardless of base" do
    expect(base_converter(0, 16)).to eq("0")
    expect(base_converter(0, 2)).to eq("0")
  end
end
