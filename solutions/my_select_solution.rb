class Array
  def my_select(&prc)
    selects = []

    self.each do |item|
      selects << item if prc.call(item)
    end

    selects
  end
end
