# Write a method that returns the factors of a number in ascending order.
def factors(num)
  return nil if num <= 0
  return [1] if num == 0
  (1..num).select { |i| (num % i) == 0 }
end
