class Array
  def my_inject(accumulator = nil, &block)
    arr = self

    if accumulator.nil?
      accumulator = self.first
      arr = self.drop(1)
    end

    arr.each do |el|
      accumulator = block.call(accumulator, el)
    end

    accumulator
  end
end
