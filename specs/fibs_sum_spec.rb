describe 'fibs_sum' do
  it 'returns the sum of the first fibonacci number' do
    expect(fibs_sum(1)).to eq(1)
  end

  it 'returns the sum of the first 2 fibonacci numbers' do
    expect(fibs_sum(2)).to eq(2)
  end

  it 'returns the sum of the first 6 fibonacci numbers' do
    expect(fibs_sum(6)).to eq(20)
  end

  it "calls itself recursively" do 
    expect(self).to receive(:fibs_sum).at_least(:twice).and_call_original
    fibs_sum(6)
  end
end
