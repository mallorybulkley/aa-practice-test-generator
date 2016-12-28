describe 'first_even_numbers_sum' do

  it "Correctly returns the sum of the first even number" do
    expect(first_even_numbers_sum(1)).to eq(2)
  end

  it "Returns the sum of the first n even numbers" do
    expect(first_even_numbers_sum(6)).to eq(42)
  end

end
