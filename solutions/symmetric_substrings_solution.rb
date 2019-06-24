class String
  # Define a method `symmetric_substrings` that returns 
  # an array of substrings that are palindromes.
  # Only include substrings of length > 1.

  # example: "cool".symmetric_substrings => ["oo"]

  def symmetric_substrings
    symm_subs = []

    self.length.times do |start_pos|
      (2..(self.length - start_pos)).to_a.each do |end_pos|
        substr = self[start_pos...(start_pos + end_pos)]
        symm_subs << substr if substr == substr.reverse
      end
    end

    symm_subs
  end
end
