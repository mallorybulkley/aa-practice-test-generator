describe 'my_reject' do
  let(:arr) { [1, 2, 3] }

  it "should NOT use built-in #reject method" do
    expect(arr).not_to receive(:reject)
    expect(arr).not_to receive(:reject!)
    arr.my_reject { |num| num > 1 }
  end

  it 'It correctly selects elements that do not match the passed in block' do
    expect(arr.my_reject { |num| num > 1 }).to eq([1])
  end

  it 'It returns all elements if no elements match the block' do
    expect(arr.my_reject { |num| num == 4 }).to eq([1,2,3])
  end
end