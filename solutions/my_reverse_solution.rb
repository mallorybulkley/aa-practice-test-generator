class Array

  def my_reverse
    reversed = []
    i = length - 1
    while i >= 0
      reversed << self[i]
      i -= 1
    end
    reversed
  end

end
