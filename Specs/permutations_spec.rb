describe "#permutations" do
  it "returns all permutations of an array" do
    expect(permutations([1, 2, 3])).to eq([[1, 2, 3], [1, 3, 2], [2, 1, 3], [2, 3, 1], [3, 1, 2], [3, 2, 1]])
  end
end
