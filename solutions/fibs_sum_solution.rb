# Write a method that finds the sum of the first n fibonacci numbers recursively. 
# Assume n > 0.
def fibs_sum(n)
  return 0 if n == 0
  return 1 if n == 1

  fibs_sum(n-1) + fibs_sum(n-2) + 1
end
