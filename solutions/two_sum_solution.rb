
class Array
  def two_sum
    pairs = []
    
    self.each_index do |i|
      ((i + 1)...self.length).to_a.my_each do |j|
        pairs << [i, j] if self[i] + self[j] == 0
      end
    end

    pairs
  end
end
