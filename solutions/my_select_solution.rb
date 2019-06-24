class Array
  # define a method `my_select(&prc)` that correctly returns
  # an array of selected elements according to the block
  # you CANNOT use ruby's `Array#select` or `Array#select!`

  def my_select(&prc)
    selects = []

    self.each do |item|
      selects << item if prc.call(item)
    end

    selects
  end
  
end
