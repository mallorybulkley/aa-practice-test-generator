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
  (2..Math.sqrt(num).ceil).to_a.each do |i|
    if num % i == 0
      return [i] + prime_factorization(num/i)
    end
  end

  return [num]
end
