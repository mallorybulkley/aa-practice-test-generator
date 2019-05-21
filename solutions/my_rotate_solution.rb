class Array
  def my_rotate(positions = 1)
    split_idx = positions % self.length

    self.drop(split_idx) + self.take(split_idx)
  end
end
