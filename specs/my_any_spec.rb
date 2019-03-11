describe 'my_any' do
  arr = [1,2,3]

  it "should use #my_each, NOT built-in ruby method" do
    expect(arr).to receive(:my_each).and_call_original
    expect(arr).not_to receive(:each)
    expect(arr).not_to receive(:map)
    expect(arr).not_to receive(:map!)
    arr.my_any? { |num| num > 1 }
  end

  it "returns true if any number matches the block" do
    expect(arr.my_any? { |num| num > 2 }).to eq(true)
  end

  it "returns false if no elementes match the block" do
    expect(arr.my_any? { |num| num == 4 }).to eq(false)
  end
end
