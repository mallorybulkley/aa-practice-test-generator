
def digital_root(num)
  while num > 10
    num = digital_root_step(num)
  end

  num
end

def digital_root_step(num)
  root = 0
  while num > 0
    root += (num % 10)

    num /= 10
  end

  root
end

# Alternate Solution
# def digital_root(num)
#   digits = []
#
#   while num > 0
#     digits << num % 10
#     num /= 10
#   end
# 
#   digit_sum = digits.inject(&:+)
#
#   digit_sum > 10 ? digital_root(digit_sum) : digit_sum
# end
