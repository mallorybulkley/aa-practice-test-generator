class Array

  def my_each(&prc)
    i = 0
    while i < self.length
      prc.call(self[i])
      i+=1
    end
    self
  end

  def my_all?(&prc)
    my_each{|el| return false unless prc.call(el)}
    true
  end

end
