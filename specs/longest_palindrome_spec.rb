describe '#longest_palindrome' do
  it 'returns false if there is no palindrome longer than two letters' do
    expect(longest_palindrome("palindrome")).to eq(false)
  end

  it 'returns the correct length of the palindrome' do
    expect(longest_palindrome("181847117432")).to eq(6)
  end

  it 'returns the correct length for the longest palindrome in the string' do
    expect(longest_palindrome("noonminimum")).to eq(5)
  end
end
