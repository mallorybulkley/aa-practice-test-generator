describe 'my_select' do

  let(:arr) { [1, 2, 3] }

  it "should use #my_each, NOT built-in ruby method" do
    expect(arr).to receive(:my_each).and_call_original
    expect(arr).not_to receive(:each)
    expect(arr).not_to receive(:map)
    expect(arr).not_to receive(:map!)
    arr.my_select { |num| num > 1 }
  end

  it 'It correctly selects elements according to the passed in block' do
    expect(arr.my_select { |num| num > 1 }).to eq([2, 3])
  end

  it 'It returns an empty array if there are no matches' do
    expect(arr.my_select { |num| num == 4 }).to eq([])
  end

end
