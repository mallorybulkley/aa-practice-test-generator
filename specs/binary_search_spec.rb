describe 'my_bsearch' do
  # create a method that performs a binary search in an array for
  # an element and returns its index
  let(:arr) { [11, 22, 33, 44, 66] }

  it "returns nil if the array is empty" do
    expect([].my_bsearch(11)).to be_nil
  end

  it "returns the index of a target" do
    expect(arr.my_bsearch(33)).to eq(2)
  end

  it "returns the index of a target that's less than the midpoint" do
    expect(arr.my_bsearch(22)).to eq(1)
  end

  it "returns the index of a target that's greater than the midpoint" do
    expect(arr.my_bsearch(66)).to eq(4)
  end

  it "returns nil if the target isn't found" do
    expect(arr.my_bsearch(5)).to be_nil
  end

  it "does not call any blacklisted methods" do
    disallowed_methods = [
      :index, :find_index, :include?, :member?
    ]

    disallowed_methods.each do |method|
      expect(arr).not_to receive(method)
    end

    arr.my_bsearch(5)
    arr.my_bsearch(11)
  end
end
