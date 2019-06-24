# **THIS PROBLEM WILL NOT SHOW UP ON A REAL ASSESSMENT** 
# If you are a non-native English speaker and find it 
# difficult to understand this problem do not spend too 
# much time on it and focus on other problems instead.

# Define a method `pig_latinify(sentence)` that translates a 
# sentence into pig latin. You may want a helper method.

## Rules
# In the English language, vowels are the following 
# letters: ['a', 'e', 'i', 'o', 'u'] 
# Consonants are all other letters.

# Pig latin translation uses the following rules:
#  1. If the word begins with a vowel, simply append 
#     `ay` onto the end.
#      ex. 'apple' => 'appleay'
#  2. If the word begins with a consonant, move the 
#     starting consonants to the end of the word and 
#     then append `ay`
#      ex1. 'pearl' => 'earlpay'
#      ex2. `school` => `oolschay`
#  3. Treat `qu` at the start of a word as a singular consonant.
#      ex1. `queen` => `eenquay`
#      ex2. `square` => `aresquay`

def pig_latinify(sentence)
  translated_words = sentence.split(" ").map do |word|
    translate_word(word)
  end
  translated_words.join(" ")
end

def translate_word(word)
  vowels = %w(a e i o u)
  if vowels.include?(word[0])
    "#{word}ay"
  else
    phoneme_end = 0
    until vowels.include?(word[phoneme_end])
      phoneme_end += 1
    end
    phoneme_end += 1 if word[phoneme_end - 1] == "q" && word[phoneme_end] == "u"
    "#{word[phoneme_end..-1]}#{word[0...phoneme_end]}ay"
  end
end
