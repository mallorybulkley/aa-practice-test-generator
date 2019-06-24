class Array
  # define a method `my_rotate(positions)` that rotates the 
  # elements correctly based on the argument provided
  # should work for positive and negative integer arguments
  # you CANNOT use ruby's `Array#rotate` or `Array#rotate!`

  def my_rotate(positions = 1)
    split_idx = positions % self.length

    self.drop(split_idx) + self.take(split_idx)
  end

end