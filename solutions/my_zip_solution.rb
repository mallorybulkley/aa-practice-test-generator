class Array
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
