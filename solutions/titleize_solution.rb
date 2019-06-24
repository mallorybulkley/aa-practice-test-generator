# Define a method `titleize(title)` that capitalizes 
# each word in a string like a book title.
# First word in a title should always be capitalized.
# Do not capitalize words like 'a', 'and', 'of', 'over' or 'the'

LITTLE_WORDS = [
  "a",
  "and",
  "of",
  "over",
  "the"
].freeze

def titleize(title)
  words = title.split(" ")
  result_words = []
  idx = 0
  words.each do |word|
    if idx > 0 && LITTLE_WORDS.include?(word)
      result_words << word.downcase
    else
      result_words << word.capitalize
    end
    idx += 1
  end

  result_words.join(" ")
end
