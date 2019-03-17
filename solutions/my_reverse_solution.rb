class Array
  def my_reverse
    reversed = []

    self.my_each do |el|
      reversed.unshift(el)
    end

    reversed
  end
end
