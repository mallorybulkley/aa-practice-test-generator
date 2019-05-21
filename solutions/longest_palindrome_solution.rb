def longest_palindrome(string)
  longest_palindrome = false
  i = 0

  while i < string.length - 1
    j = i + 1

    while j < string.length
      curr_string = string[i..j]
      len = curr_string.length

      if is_palindrome?(curr_string)
        longest_palindrome = len if !longest_palindrome || len > longest_palindrome
      end

      j += 1
    end

    i += 1
  end

  longest_palindrome
end

def is_palindrome?(str)
  str == str.reverse
end
