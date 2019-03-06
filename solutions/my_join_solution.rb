class Array

  def my_join(separator = "")
    joined_str = ""
    each_with_index do |el, i|
      joined_str << el.to_s
      joined_str << separator unless i == length - 1 
    end

    joined_str
  end

end
