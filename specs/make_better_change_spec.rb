describe "Make better change" do
  it "Returns the smallest possible array of coins: case 1" do
    expect(make_better_change(24, [10,7,1])).to match_array([10,7,7])
  end

  it "Returns the smallest possible array of coins: case 2" do
    expect(make_better_change(25, [10,7,1])).to match_array([10,7,7,1])
  end

  it "Returns the smallest possible array of coins: case 3" do
    expect(make_better_change(25, [10,8,7,1])).to match_array([10,8,7])
  end
end
