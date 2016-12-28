
class Array
  def two_sum
    pairs = []
    (0...length).each do |i|
      ((i + 1)...length).each do |j|
        pairs << [i, j] if self[i] + self[j] == 0
      end
    end

    pairs
  end
end
