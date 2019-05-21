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
  end

  def is_not_under_attack(row, col)
  end

  def place_queen(row, col)
  end

  def remove_queen(row, col)
  end
end

eight_queens = EightQueens.new()
eight_queens.backtrack
