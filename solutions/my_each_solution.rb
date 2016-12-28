class Array

  def my_each(&prc)
    (0...size).each do |i|
      prc.call(self[i])
    end

    self
  end

  def my_each_with_index(&prc)
    (0...size).each do |idx|
      prc.call(self[idx], idx)
    end

    self
  end
end
