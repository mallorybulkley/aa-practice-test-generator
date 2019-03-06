describe "deep_dup" do
  subject(:robot_parts) do [
      ["nuts", "bolts", "washers"],
      ["capacitors", "resistors", "inductors"]
    ]
  end
  let(:copy) { deep_dup(robot_parts) }

  it "makes a copy of the original array" do
    expect(copy).to eq(robot_parts)
    expect(copy).not_to be(robot_parts)
  end

  it "deeply copies arrays" do
    expect(copy[0]).to eq(robot_parts[0])
    expect(copy[0]).not_to be(robot_parts[0])

    copy[1] << "LEDs"
    expect(robot_parts[1]).to eq(["capacitors", "resistors", "inductors"])
  end
end
