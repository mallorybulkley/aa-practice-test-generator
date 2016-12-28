describe 'my_any' do
  a= [1,2,3]
  it "returns true if any number matches the block" do
    expect(a.my_any? { |num| num > 1 }).to eq(true)
  end

  it "returns false if no elementes match the block" do
    expect(a.my_any? { |num| num == 4 }).to eq(false)
  end
end
