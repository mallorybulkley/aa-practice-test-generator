def deep_dup(arr)
  arr.map{|el| el.is_a?(Array) ? deep_dup(el) : el}
end
