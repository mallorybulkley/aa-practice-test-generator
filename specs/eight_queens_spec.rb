require 'yaml'

describe "eight_queens_possibilities" do
  sol = YAML.load_file("./possible_boards.yml").sort
  pos = eight_queens_possibilities(0, [], nil)

  it "Returns an array of the correct_size" do
    expect(pos.length).to eq(sol.length)
  end

  it "Returns the correct positions" do
    expect(pos.sort).to eq(sol)
  end
end
