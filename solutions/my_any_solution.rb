class Array

  def my_any?(&prc)
    my_each{|el| return true if prc.call(el)}
    false
  end

end
