describe 'first_even_numbers_sum' do
  it "returns the sum of the first even number" do
    expect(first_even_numbers_sum(1)).to eq(2)
  end

  it "returns the sum of the first n even numbers" do
    expect(first_even_numbers_sum(6)).to eq(42)
  end

  it "calls itself recursively" do
    expect(self).to receive(:first_even_numbers_sum).at_least(:twice).and_call_original
    first_even_numbers_sum(6)
  end
end
