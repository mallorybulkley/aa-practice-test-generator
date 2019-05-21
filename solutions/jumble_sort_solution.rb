# Write a method that takes a string and an alphabet. It returns a copy of the string
# with the letters re-ordered according to their positions in the alphabet. If
# no alphabet is passed in, it defaults to normal alphabetical order (a-z).

# Example:
# jumble_sort("hello") => "ehllo"
# jumble_sort("hello", ['o', 'l', 'h', 'e']) => 'ollhe'
def jumble_sort(str, alphabet = nil)
  alphabet ||= ('a'..'z').to_a

  sorted = false
  until sorted
    sorted = true
    (0...str.length - 1).to_a.each do |i|
      if alphabet.index(str[i]) > alphabet.index(str[i + 1])
        str[i], str[i + 1] = str[i + 1], str[i]
        sorted = false
      end
    end
  end
  str
end
