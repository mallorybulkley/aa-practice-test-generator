LITTLE_WORDS = [
  "a",
  "and",
  "of",
  "over",
  "the"
].freeze

def titleize(title)
  words = title.split(" ")
  words.map!.with_index do |word, idx|
    if idx > 0 && LITTLE_WORDS.include?(word)
      word.downcase
    else
      word.capitalize
    end
  end

  words.join(" ")
end
