class Array
  def my_all?(&prc)
    self.each { |el| return false unless prc.call(el) }
    true
  end
end
