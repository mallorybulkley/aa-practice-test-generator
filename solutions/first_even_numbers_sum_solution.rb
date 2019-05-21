# Write a recursive method that returns the sum of the first n even numbers
# recursively. Assume n > 0.
def first_even_numbers_sum(n)
  return 2 if n == 1
  2 * n + first_even_numbers_sum(n-1)
end
