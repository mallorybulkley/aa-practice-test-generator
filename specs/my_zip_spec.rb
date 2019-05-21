describe "my_zip" do
  let(:arr1) { [ 4, 5, 6 ] }
  let(:arr2) { [ 7, 8, 9 ] }

  it 'should NOT use built-in ruby #zip method' do
    expect(arr1).not_to receive(:zip)
    arr1.my_zip(arr2)
  end 

  it 'Zips arrays of the same size' do
    expect([1, 2, 3].my_zip(arr1, arr2)).to eq([[1, 4, 7], [2, 5, 8], [3, 6, 9]])
  end

  it 'Zips arrays of differnet sizes and adds nil appropriately' do
    expect(arr1.my_zip([1,2], [8])).to eq([[4, 1, 8], [5, 2, nil], [6, nil, nil]])
  end

  let(:arr3) { [10, 11, 12] }
  let(:arr4) { [13, 14, 15] }

  it "Zips arrays with more elements than the original" do
    expect([1, 2].my_zip(arr1, arr2, arr3, arr4)).to eq([[1, 4, 7, 10, 13], [2, 5, 8, 11, 14]])
    expect([].my_zip(arr1, arr2, arr3, arr4)).to eq([])
  end
end
