def base_converter(num, b)
  return "0" if num == 0

  digits = %w(0 1 2 3 4 5 6 7 8 9 a b c d e f)
  result = ""

  until num == 0
    result.insert(0, digits[num % b])
    num /= b 
  end

  result
end
