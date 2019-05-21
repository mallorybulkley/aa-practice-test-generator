describe "my_rotate" do
  let(:arr) {[ "a", "b", "c", "d" ]}

  it 'should NOT use built-in ruby #rotate method' do
    expect(arr).not_to receive(:rotate)
    expect(arr).not_to receive(:rotate!)
    arr.my_rotate(2)
  end

  it "Rotates the elements 1 position if no argument is passed in" do
    expect(arr.my_rotate).to eq(["b", "c", "d", "a"])
  end

  it "Rotates the elements correctly if an argument is passed in" do
    expect(arr.my_rotate(2)).to eq(["c", "d", "a", "b"])
  end

  it "Rotates the elements correctly if a negative argument is passed in" do
    expect(arr.my_rotate(-3)).to eq(["b", "c", "d", "a"])
  end

  it "Rotates the elements correctly for a large argument" do
    expect(arr.my_rotate(15)).to eq(["d", "a", "b", "c"])
  end
end
