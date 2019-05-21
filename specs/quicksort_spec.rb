describe "my_quick_sort" do
  let(:array) { [1, 2, 3, 4, 5, 6, 7].shuffle }
  let(:sorted) { [1, 2, 3, 4, 5, 6, 7] }

  it "works with an empty array" do 
    expect([].my_quick_sort).to eq([])
  end

  it "works with an array of one number" do 
    expect([5].my_quick_sort).to eq([5])
  end

  it "sorts numbers" do
    expect(array.my_quick_sort).to eq(sorted)
  end

  it "sorts arrays with duplicates" do
    expect([17,10,10,9,3,3,2].my_quick_sort).to eq([2,3,3,9,10,10,17])
  end

  it "will use block if given" do
    reversed = array.my_quick_sort do |num1, num2|
      num2 <=> num1
    end
    expect(reversed).to eq([7, 6, 5, 4, 3, 2, 1])
  end
end
