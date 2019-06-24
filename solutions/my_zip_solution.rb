class Array
  # example => [1,2,3].my_zip([4,5,6], [7,8,9]) 
  # should return => [[1,4,7], [2,5,8], [3,6,9]]
  # does not call ruby's built-in `Array#zip` method

  def my_zip(*arrays)
    zipped = []

    self.length.times do |i|
      subzip = [self[i]]

      arrays.each do |array|
        subzip << array[i]
      end

      zipped << subzip
    end

    zipped
  end
  
end
