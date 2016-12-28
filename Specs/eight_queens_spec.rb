describe "eight_queens_possibilities" do
  it "Returns an array of the correct_size" do
    pos = eight_queens_possibilities(0, [], nil)
    sol = YAML.load_file("./possible_boards.yml").sort

    expect(pos.sort).to eq(sol)
  end

  pos = eight_queens_possibilities(0, [], nil)

end
