
class String
  def real_words_in_string(dictionary)
    real_words = []
    (1...self.length - 1).each do |first|
      (first + 1...self.length).each do |last|
        word = self[first...last]
        if dictionary.include?(word)
          real_words << word unless real_words.include?(word)
        end
      end
    end
    real_words
  end
end
