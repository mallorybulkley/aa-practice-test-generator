class String
  # Define a method `real_words_in_string(dictionary)`
  # that returns an array of all the subwords 
  # of the string that appear in the dictionary argument. 
  # The method should NOT return any duplicates.

  def real_words_in_string(dictionary)
    real_words = []

    (0...self.length).each do |idx|
      (idx...self.length).each do |jdx|
        curr_word = self[idx..jdx]
        next if real_words.include?(curr_word)
        
        real_words << curr_word if dictionary.include?(curr_word)
      end
    end
    
    real_words
  end
end
