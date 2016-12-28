describe 'subsets' do

  it "Correctly returns all subsets of an array" do
    expect(subsets([1, 2, 3])).to eq([[], [1], [2], [1, 2], [3], [1, 3], [2, 3], [1, 2, 3]])
  end

end
