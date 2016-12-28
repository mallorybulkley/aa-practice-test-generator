def make_better_change(value, coins)
  coins_to_check = coins.select{|coin| coin <= value}
  return nil if coins_to_check.empty?

  solutions = []

  coins_to_check.sort.reverse.each do |coin|
    remainder = value - coin

    if remainder > 0
      remainder_solution = make_better_change(remainder, coins_to_check)
      solutions << [coin] + remainder_solution unless remainder_solution.nil?
    else
      solutions << [coin]
    end
  end

  solutions.sort_by!{|arr| arr.size}.first
end
