def base_converter(num, b)
  return "" if num == 0

  digits = %w(0 1 2 3 4 5 6 7 8 9 a b c d e f)
  base_converter(num/b, b) + digits[num % b]
end
