class Array

  def my_reject(&prc)
    self.dup - my_select(&prc)
  end

end
