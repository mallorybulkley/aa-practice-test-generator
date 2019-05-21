describe "#rec_sum" do
  it "returns the sum of all elements in an array" do
    arr = [1,2,3,4]
    expect(rec_sum(arr)).to eq(10)
  end

  it "returns the sum of all elements in an array" do
    expect(rec_sum([-6, 6, 5, 4])).to eq(9)
  end
  
  it "returns 0 if the array is empty" do
    expect(rec_sum([])).to eq(0)
  end

  it "calls itself recursively" do
    expect(self).to receive(:rec_sum).exactly(4).times.and_call_original
    rec_sum([1,2,3])
  end
end
