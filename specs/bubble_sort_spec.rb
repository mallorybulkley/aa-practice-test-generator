describe "#bubble_sort" do
  # write a new `Array#bubble_sort` method; it should not modify the
  # array it is called on, but creates a new sorted array.
  let(:array) { [1, 2, 3, 4, 5].shuffle }

  it "works with an empty array" do
    expect([].bubble_sort).to eq([])
  end

  it "works with an array of one item" do
    expect([1].bubble_sort).to eq([1])
  end

  it "sorts numbers" do
    expect(array.bubble_sort).to eq(array.sort)
  end

  it "will use block if given" do
    sorted = array.bubble_sort do |num1, num2|
      # order numbers based on descending sort of their squares
      num2**2 <=> num1**2
    end

    expect(sorted).to eq([5, 4, 3, 2, 1])
  end

  it "does not modify original" do
    duped_array = array.dup
    duped_array.bubble_sort
    expect(duped_array).to eq(array)
  end
end
