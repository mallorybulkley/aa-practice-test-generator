# See question here: http://web.archive.org/web/20130215052843/http://rubyquiz.com/quiz154.html
# Write a recursive method to solve `make better change`.

# HINT: To make_better_change, we only take one coin at a time and
# never rule out denominations that we've already used.
# This allows each coin to be available each time we get a new remainder.
# By iterating over the denominations and continuing to search
# for the best change, we assure that we test for 'non-greedy' uses
# of each denomination.

# make_better_change(24, [10,7,1]) should return [10,7,7]
def make_better_change(value, coins)

end
