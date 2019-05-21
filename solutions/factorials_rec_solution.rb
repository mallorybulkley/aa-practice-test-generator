# Write a method that finds the factors of a 
# number in ascending order recursively.
def factorials_rec(num)
  return [1] if num == 1
  facs = factorials_rec(num - 1)
  facs << facs.last * (num - 1)
  facs
end
