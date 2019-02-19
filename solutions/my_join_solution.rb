class Array

  def my_join(str = "")
    new_str = ""
    each_with_index do |el, i|
      new_str << el.to_s
      new_str << str unless i == length - 1 
      # don't want to add the str to the end of the new_str
    end

    new_str
  end

end
