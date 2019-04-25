describe 'my_any' do
  arr = [1,2,3]

  it "should use NOT use built-in #any? method" do
    expect(arr).not_to receive(:any?)
    arr.my_any? { |num| num > 0 }
  end

  it "returns true if any number matches the block" do
    expect(arr.my_any? { |num| num > 2 }).to eq(true)
  end

  it "returns false if no elementes match the block" do
    expect(arr.my_any? { |num| num == 4 }).to eq(false)
  end
end
