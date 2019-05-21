describe "#jumble_sort" do
  it "defaults to alphabetical order" do
    expect(jumble_sort("hello")).to eq("ehllo")
  end

  it "takes an alphabet array and sorts by that order" do
    alph = ("a".."z").to_a
    hello = "hello".chars.uniq
    alph -= hello
    alphabet = (hello += alph)

    expect(jumble_sort("hello", alphabet)).to eq("hello")
  end

  it "sorts by a reversed alphabet" do
    reverse = ("a".."z").to_a.reverse
    expect(jumble_sort("hello", reverse)).to eq("ollhe")
  end

  it "works with an empty string" do
    expect(jumble_sort("")).to eq("")
  end

  it "works with a string of one item" do
    expect(jumble_sort("g")).to eq("g")
  end
end
