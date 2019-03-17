class Array
  def my_select(&prc)
    selects = []

    self.my_each do |item|
      selects << item if prc.call(item)
    end

    selects
  end
end
