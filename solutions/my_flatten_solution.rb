class Array

  def my_flatten
    flattened = []
    self.my_each do |el|
      el.is_a?(Array) ? flattened += el.my_flatten : flattened << el
    end
    flattened
  end

  def my_controlled_flatten(n)
    return self if n < 1
    result = []

    each do |el|
      if el.is_a?(Array)
        result += el.my_controlled_flatten(n-1)
      else
        result << el
      end
    end

    result
  end

end
