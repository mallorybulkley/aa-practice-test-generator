describe 'my_all' do
  arr = [1,2,3]

  it "should use #my_each, NOT built-in ruby method" do
    expect(arr).to receive(:my_each).and_call_original
    expect(arr).not_to receive(:each)
    expect(arr).not_to receive(:map)
    expect(arr).not_to receive(:map!)
    arr.my_all? { |num| num > 0 }
  end

  it "returns true if all elements match the block" do
    expect(arr.my_all? { |num| num > 0 }).to eq(true)
  end

  it "returns false if not all elementes match the block" do
    expect(arr.my_all? { |num| num > 1 }).to eq(false)
  end
end
