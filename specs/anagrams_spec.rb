describe "#anagrams" do
  it "returns true if words are anagrams" do
    expect(anagrams('abc', 'cba')).to be true
  end

  it "returns false if words are not anagrams" do
    expect(anagrams('abc', 'aba')).to be false 
  end
  
  it "does not count words with same letters but varying lengths as anagrams" do
    expect(anagrams('abc', 'cbaa')).to be false
  end

  it "can handle large words with letters extremely scrambled" do
    expect(anagrams('aiuwehfxzxcvmneowieurahsde', 'nsewceaerihfawzueouxdihmxv')).to be true
    expect(anagrams('aiuwehfxzxcvmneowieurahsde', 'nsewceaerihfawzueouxdihmxw')).to be false
  end
end
