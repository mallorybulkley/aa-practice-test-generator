class Array
  def my_each(&prc)
    i = 0
    while i < self.length
      prc.call(self[i])
      i+=1
    end
    self
  end

  def my_flatten
    flattened = []
    self.my_each do |el|
      el.is_a?(Array) ? flattened += el.my_flatten : flattened << el
    end
    flattened
  end

  def my_controlled_flatten(level = nil)
    return self if level < 1
    result = []

    self.my_each do |el|
      if el.is_a?(Array)
        result += el.my_controlled_flatten(level-1)
      else
        result << el
      end
    end

    result
  end
end
