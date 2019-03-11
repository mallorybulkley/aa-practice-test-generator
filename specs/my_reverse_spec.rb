describe "my_reverse" do
  let(:array) { [ "a", "b", "c", "d" ] }

  it "should use #my_each, NOT built-in ruby method" do
    expect(array).to receive(:my_each).and_call_original
    expect(array).not_to receive(:each)
    expect(array).not_to receive(:map)
    expect(array).not_to receive(:map!)
    array.my_reverse
  end

  it "Reverses an array" do
    expect(array.my_reverse).to eq(array.reverse)
  end
end