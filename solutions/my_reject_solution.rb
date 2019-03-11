class Array

  def my_reject(&prc)
    arr = []
    self.my_each do |el|
      arr << el unless prc.call(el)
    end
    arr
  end

end
