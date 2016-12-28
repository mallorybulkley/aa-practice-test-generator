def exponent(b, n)
  return 1 if n == 0

  if n > 0
    b * exponent(b, n - 1)
  else
    1.0/b * exponent(b, n + 1)
  end
end
