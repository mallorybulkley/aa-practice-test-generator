describe 'my_select' do

  a = [1, 2, 3]

  it 'It correctly selects elements according to the passed in block' do
    expect(a.my_select { |num| num > 1 }).to eq([2, 3])
  end

  it 'It returns an empty array if there are no matches' do
    expect(a.my_select { |num| num == 4 }).to eq([])
  end

end
