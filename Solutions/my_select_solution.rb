class Array

  def my_select(&prc)
    select = []

    self.my_each{|el| select << el if prc.call(el)}
    select
  end

end
