describe "my_flatten" do
  it "should NOT use built-in ruby #flatten method" do
    arr = [1, 2, 3, [4, [5, 6]], [[[7]], 8]]
    expect(arr).not_to receive(:flatten)
    expect(arr).not_to receive(:flatten!)
    arr.my_flatten
  end

  it 'Flattens arrays correctly' do
    expect([1, 2, 3, [4, [5, 6]], [[[7]], 8]].my_flatten).to eq([1, 2, 3, 4, 5, 6, 7, 8])
  end
end

describe "my_controlled_flatten" do
  it "should NOT use built-in ruby #flatten method" do
    arr = [1,[2,3], [4,[5]], [[6,[7]]]]
    expect(arr).not_to receive(:flatten)
    expect(arr).not_to receive(:flatten!)
    arr.my_controlled_flatten(1)
  end

  it "Flattens an array the specified number of levels" do
    expect([1,[2,3], [4,[5]], [[6,[7]]]].my_controlled_flatten(1)).to eq([1,2,3,4,[5], [6, [7]]])
  end
end
