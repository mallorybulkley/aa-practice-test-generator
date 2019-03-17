class Array
  def my_reject(&prc)
    arr = []
    self.each do |el|
      arr << el unless prc.call(el)
    end
    arr
  end
end
