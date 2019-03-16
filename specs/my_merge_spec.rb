describe "my_merge" do
  let(:hash1) { {a: 1, b: 2, c: 3} }
  let(:hash2) { {d: 4, e: 5} }
  let(:hash3) { {c: 33, d: 4, e: 5} }

  it 'should NOT use built-in ruby #merge method' do
    expect(hash1).not_to receive(:merge)
    expect(hash1).not_to receive(:merge!)
    hash1.my_merge(hash2)
  end

  it "Merges 2 hashes and returns a hash" do
      expect(hash1.my_merge(hash2)).to eq(hash1.merge(hash2))
  end

  it "Prioritizes values from the hash being merged in" do
      expect(hash1.my_merge(hash3)).to eq(hash1.merge(hash3))
  end
end
