describe "my_join" do
  let(:array) { [ "a", "b", "c", "d" ] }

  it "should NOT use built-in ruby #join method" do
    expect(array).not_to receive(:join)
    array.my_join
  end

  it "Joins an array if no argument is passed" do
    expect(array.my_join).to eq("abcd")
  end

  it "Joins an array if an argument is passed" do
    expect(array.my_join("$")).to eq("a$b$c$d")
  end
end
