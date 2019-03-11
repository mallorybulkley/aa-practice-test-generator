# Write a method that returns an array of all the subwords 
# of the string that appear in the dictionary argument. 
# The method does NOT return any duplicates.

class String
  def real_words_in_string(dictionary)
    real_words = []
    (1...self.length - 1).to_a.my_each do |first|
      (first + 1...self.length).my_each do |last|
        word = self[first...last]
        if dictionary.include?(word)
          real_words << word unless real_words.include?(word)
        end
      end
    end
    real_words
  end
end