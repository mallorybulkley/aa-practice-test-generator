describe "String#symmetric_substrings" do
  it "handles a simple example" do
    expect("aba".symmetric_substrings).to match_array(["aba"])
  end

  it "handles two substrings" do
    expect("aba1cdc".symmetric_substrings).to match_array(["aba", "cdc"])
  end

  it "handles nested substrings" do
    expect("xabax".symmetric_substrings).to match_array(["aba", "xabax"])
  end

  it "handles no symmetrical substrings" do
    expect("abcd".symmetric_substrings).to match_array([])
  end
end
