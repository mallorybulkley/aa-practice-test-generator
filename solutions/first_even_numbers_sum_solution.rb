def first_even_numbers_sum(n)
  return 2 if n == 1

  2 * n + first_even_numbers_sum(n-1)
end
