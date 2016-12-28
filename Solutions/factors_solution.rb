
def factors(num)
  (1..num).select { |i| (num % i) == 0 }
end
