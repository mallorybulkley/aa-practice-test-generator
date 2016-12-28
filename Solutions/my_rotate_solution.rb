class Array

  def my_rotate(num=1)
    rotations = num % size
    rotated_arr = self.dup

    rotations.times do
      rotated_arr << rotated_arr.shift
    end

    rotated_arr
  end

end
