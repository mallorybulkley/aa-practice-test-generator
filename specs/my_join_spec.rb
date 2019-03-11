describe "my_join" do
  let(:array) { [ "a", "b", "c", "d" ] }

  it "should use #my_each, NOT built-in ruby method" do
    expect(array).to receive(:my_each).and_call_original
    expect(array).not_to receive(:each)
    expect(array).not_to receive(:map)
    expect(array).not_to receive(:map!)
    array.my_join
  end

  it "Joins an array if no argument is passed" do
    expect(array.my_join).to eq("abcd")
  end

  it "Joins an array if an argument is passed" do
    expect(array.my_join("$")).to eq("a$b$c$d")
  end
end