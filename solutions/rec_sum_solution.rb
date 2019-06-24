# Define a method `rec_sum(nums)` that returns the 
# sum of all elements in an array recursively

def rec_sum(nums)
  return 0 if nums.empty?
  
  nums[0] + rec_sum(nums.drop(1))
end
