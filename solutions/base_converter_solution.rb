def base_converter(num, b)
  return num.to_s if [0,1].include?(num)

  digits = %w(0 1 2 3 4 5 6 7 8 9 a b c d e f)
  base_converter(num/b, b) + digits[num % b]
end
