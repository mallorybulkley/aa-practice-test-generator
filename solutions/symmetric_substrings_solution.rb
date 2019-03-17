class String
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
