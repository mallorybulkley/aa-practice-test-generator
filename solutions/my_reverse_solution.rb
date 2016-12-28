class Array

  def my_reverse
    reversed = []
    my_each{|el| reversed.unshift(el)}
    reversed
  end

end
