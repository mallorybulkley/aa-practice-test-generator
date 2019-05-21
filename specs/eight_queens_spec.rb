describe "eight_queens" do
  eight_queens = EightQueens.new()

  it "returns the correct number" do
    expect(eight_queens.backtrack).to eq(92)
  end

  it "calls itself recursively" do
    expect(eight_queens).to receive(:backtrack).exactly(1965).times.and_call_original
    eight_queens.backtrack
  end
end
