describe "#pig_latinify" do
  it "translates a word beginning with a vowel" do
    s = pig_latinify("apple")
    expect(s).to eq("appleay")
  end

  it "translates a word beginning with a consonant" do
    s = pig_latinify("banana")
    expect(s).to eq("ananabay")
  end

  it "translates a word beginning with two consonants" do
    s = pig_latinify("cherry")
    expect(s).to eq("errychay")
  end

  it "translates two words" do
    s = pig_latinify("eat pie")
    expect(s).to eq("eatay iepay")
  end

  it "translates a word beginning with three consonants" do
    expect(pig_latinify("three")).to eq("eethray")
  end

  it "counts 'sch' as a single phoneme" do
    s = pig_latinify("school")
    expect(s).to eq("oolschay")
  end

  it "counts 'qu' as a single phoneme" do
    s = pig_latinify("quiet")
    expect(s).to eq("ietquay")
  end

  it "counts 'qu' as a consonant even when it's preceded by a consonant" do
    s = pig_latinify("square")
    expect(s).to eq("aresquay")
  end

  it "translates many words" do
    s = pig_latinify("the quick brown fox")
    expect(s).to eq("ethay ickquay ownbray oxfay")
  end
end
