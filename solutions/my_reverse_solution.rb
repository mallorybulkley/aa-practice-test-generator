class Array
  def my_reverse
    reversed = []

    self.each do |el|
      reversed.unshift(el)
    end

    reversed
  end
end
