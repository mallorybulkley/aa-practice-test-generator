class Array

  def my_all?(&prc)
    my_each{|el| return false unless prc.call(el)}
    true
  end

end
