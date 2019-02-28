describe "my_merge" do
  let(:arr1){ {a: 1, b: 2, c: 3} }
  let(:arr2){ {d: 4, e: 5} }
  let(:arr3){ {c: 33, d: 4, e: 5} }

  it "Merges 2 hashes and returns a hash" do
      expect(arr1.my_merge(arr2)).to eq(arr1.merge(arr2))
  end

  it "Priortizes values from the hash being merged in" do
      expect(arr1.my_merge(arr3)).to eq(arr1.merge(arr3))
  end
end