describe "my_reverse" do
  let(:array) { [ "a", "b", "c", "d" ] }

  it "Reverses an array" do
    expect(array.my_reverse).to eq(array.reverse)
  end
end