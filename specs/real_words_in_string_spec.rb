describe "real_words_in_string" do
  it "finds a simple word" do
    words = "asdfcatqwer".real_words_in_string(["cat", "car"])
    expect(words).to eq(["cat"])
  end

  it "doesn't find words not in the dictionary" do
    words = "batcabtarbrat".real_words_in_string(["cat", "car"])
    expect(words).to be_empty
  end

  it "finds words within words" do
    dictionary = ["bears", "ear", "a", "army"]
    words = "erbearsweatmyajs".real_words_in_string(dictionary)
    expect(words).to match_array(["bears", "ear", "a"])
  end
end
