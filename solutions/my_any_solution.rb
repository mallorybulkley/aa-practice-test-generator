class Array

  def my_each(&prc)
    i = 0
    while i < self.length
      prc.call(self[i])
      i+=1
    end
    self
  end

  def my_any?(&prc)
    self.my_each{|el| return true if prc.call(el)}
    false
  end

end
