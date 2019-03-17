class Array
  def my_flatten
    flattened = []
    self.each do |el|
      el.is_a?(Array) ? flattened += el.my_flatten : flattened << el
    end
    flattened
  end

  def my_controlled_flatten(level = nil)
    return self if level < 1
    result = []

    self.each do |el|
      if el.is_a?(Array)
        result += el.my_controlled_flatten(level-1)
      else
        result << el
      end
    end

    result
  end
end
