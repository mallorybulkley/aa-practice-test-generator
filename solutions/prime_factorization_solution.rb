def prime_factorization(num)
  # Base case - 1 is not a prime so we return an empty array here
  return [] if num == 1
  
  # initialize i to 2, since it is the first prime #
  i = 2
  
  # increment i until we find a prime factor
  i += 1 until is_prime?(i) && num % i == 0 
  
  # Add i to prime factors and make recursive call to find rest
  [i] + prime_factorization(num / i)
end

def is_prime?(num)
  return false if num < 2
  (2...num).none? { |n| num % n == 0 }
end

# Alternative, optimized solution
def prime_factorization(num)
  return [] if num == 1

  # Only iterating up to the square root of num is an optimization, so that we 
  # don't check the same numbers again. This is because any factor greater than 
  # the square root would have a complementary factor below the square root. 

  # Example: The square root of 144 is 12. Factors of 144 below 12 include 
  # [1, 2, 3, 6]. The only factors greater than 12, are the complements of these 
  # factors => [144, 72, 48, 24]. Therefore it is not necessary to iterate past
  # the square root, since if a factor existed we would have already found it by 
  # then.

  # We also do not need to explicitly check that the factor is prime, because
  # by starting at 2, we ensure that the first factor we find is prime. Any factor
  # that is not prime, will itself have factors that are also factors of the
  # number we are evaluating. This will continue to be true until we in fact reach
  # the prime factors.
  (2..Math.sqrt(num).ceil).to_a.each do |i|
    if num % i == 0
      return [i] + prime_factorization(num/i)
    end
  end

  return [num]
end
