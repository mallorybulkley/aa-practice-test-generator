describe "#rec_sum" do
  it "returns the sums of all elements in an array" do
    arr = [1,2,3,4]
    expect(rec_sum(arr)).to eq(10)
  end

  it "returns 0 if the array is empty" do
    expect(rec_sum([])).to eq(0)
  end
end
