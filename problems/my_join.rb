# Monkey patch the Array class and add a my_join method. If my_join receives
# no argument, then use an empty string to join the array together.
# ex.
# [1,2,3].my_join => '123'
# [1,2,3].my_join('$') => '1$2$3'
class Array
  def my_join(separator = "")

  end
end
