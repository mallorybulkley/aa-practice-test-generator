def eight_queens_possibilities(row_num, taken_columns, positions)
  positions ||= []
  return [positions] if row_num == 8

  all_positions = []
  columns_left = (0..7).to_a - taken_columns

  columns_left.each do |col|
    positions_dup = positions.dup
    positions_dup << [row_num, col]

    all_positions += eight_queens_possibilities(row_num + 1,
      taken_columns + [col], positions_dup)
  end

  all_positions
end
