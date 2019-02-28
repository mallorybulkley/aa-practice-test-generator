describe "#permutations" do
  let(:arr) { [1, 2, 3] }

  it "returns all permutations of an array" do
    perms_arr = arr.permutation.to_a
    
    expect(permutations(arr)).to match_array(perms_arr)
  end
end