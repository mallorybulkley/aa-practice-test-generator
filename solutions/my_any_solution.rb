class Array
  def my_any?(&prc)
    self.each { |el| return true if prc.call(el) }
    false
  end
end
