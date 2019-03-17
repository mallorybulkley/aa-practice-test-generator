require 'byebug'

# Write a method that returns an array of all the subwords 
# of the string that appear in the dictionary argument. 
# The method does NOT return any duplicates.

class String
  def real_words_in_string(dictionary)
    real_words = []

    self.chars.each_index do |idx|
      self.chars[idx..-1].each_index do |jdx|
        curr_word = self[idx..jdx]
        real_words << curr_word if dictionary.include?(curr_word)
      end
    end
    
    real_words
  end
end