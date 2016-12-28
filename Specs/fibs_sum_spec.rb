describe 'fibs_sum' do

  it 'It correctly gets the answer for the 1st fibonacci number' do
    expect(fibs_sum(1)).to eq(1)
  end

  it 'It correctly gets the answer for the first 2 fibonacci numbers' do
    expect(fibs_sum(2)).to eq(2)
  end

  it 'It correctly gets the answer for the first 6 fibonacci numbers' do
    expect(fibs_sum(6)).to eq(20)
  end

end
