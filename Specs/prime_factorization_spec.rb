describe "prime_factorization" do
  it "handles an input of 2" do
    expect(prime_factorization(2)).to eq([2])
  end

  it "Test case: 12" do
    expect(prime_factorization(12).sort).to eq([2,2,3])
  end

  it "Test case: 600851475143" do
    expect(prime_factorization(600851475143).sort).to eq([71,839,1471,6857])
  end
end
