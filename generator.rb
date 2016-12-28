require 'csv'
require 'colorize'

# Instructions
system("clear")
puts "Welcome to Mallory's a/A Practice Assessment Generator".cyan
puts "This generator will create a practice test based on your input. " \
      "You can choose how many problems from each category to include in your test. "
puts "This program will generate 3 files in this folder: practice_test, spec, and solution. " \
      "Complete the practice_test file, running the spec file to check your answers. " \
      "When your time is up (you are timing yourself, right?), compare your answers to the solutions."
puts "Good luck!"

# read in csv with test info
tests = CSV.read('list.csv', headers: true, header_converters: :symbol, converters: :all)

# list possible categories
categories = Array.new
tests.each do |test|
  categories << test[1]
end
categories = categories.uniq
puts "Possible categories: #{categories.join(", ")}".magenta
puts

# get user request
puts "Input your requests, separated by commas and spaces please"
puts "Example input: " + "array: 2, recursion: 1, sort: 1".yellow
input = gets.chomp.split(", ")

categoryrequests = Hash.new(0)
input.each do |request|
  req = request.downcase.split(": ")
  categoryrequests[req[0]] = req[1].to_i
end

# make test array for each category
master = Array.new
categories.each do |category|
  problems_in_category = Array.new
  tests.each do |test|
    if category == test[1]
      problems_in_category << test
    end
  end

  # pick tests at random from each category
  n = categoryrequests[category]
  master = master.concat(problems_in_category.sample(n))
end

# create new test, spec and solution files
practice_test = File.open("practice_test.rb", "w")
spec = File.open("spec.rb", "w")
solution = File.open("solution.rb", "w")

# require rspec and the practice_test in the spec
spec << "require 'rspec'" << "\n"
spec << "require_relative 'practice_test'" << "\n"

# loop through master tests and add text to the new files
master.each do |test|
  practice_test << File.read(test[2]) << "\n"
  spec << File.read(test[3]) << "\n"
  solution << File.read(test[4]) << "\n"
end

# close the files that were just created
practice_test.close
spec.close
solution.close

puts
puts "Done!"
