# Write a recursive method that generates the number of possible unique ways to
# place eight queens on a chess board such that no two queens are in
# the row, column, or diagonal. A skeleton for a possible solution is 
# provided. Feel free to create your own solution from scratch.
class EightQueens
  attr_accessor :rows, :diags1, :diags2

  def initialize
    @rows = Array.new(8, false)
    @diags1 = Array.new(14, false)
    @diags2 = Array.new(14, false)
  end

  def backtrack(row = 0, count = 0)
    (0...8).each do |col|
      if is_not_under_attack(row, col)
        place_queen(row, col)
        if row + 1 == 8
          count += 1
        else 
          count = backtrack(row + 1, count)
        end
        remove_queen(row, col)
      end
    end 
    count
  end

  def is_not_under_attack(row, col)
    return !(rows[col] || diags1[row - col] || diags2[row + col])
  end

  def place_queen(row, col)
    rows[col] = true
    diags1[row - col] = true
    diags2[row + col] = true
  end

  def remove_queen(row, col)
    rows[col] = false
    diags1[row - col] = false
    diags2[row + col] = false 
  end
end

# eight_queens = EightQueens.new()
# eight_queens.backtrack
