require 'csv'
require 'colorize'
require 'fileutils'

# Instructions
system("clear")
puts "I am generating a practice assessment that will be saved"
puts "as 'practice_assessment/' in your current directory"

# Read in csv with problem info
problems = CSV.read(
          'resources/list.csv', 
          headers: true, 
          header_converters: :symbol, 
          converters: :all
        )

# Define number of each category problem 
categories = {
  recursion: 2,
  array: 1,
  string: 1,
  enumerable: 1,
  sort: 1
}

# Grab appropriate problems for each category
master = []

categories.each do |category, num|
  problems_in_category = []
  problems.each do |problem| 
    problems_in_category << problem if category.to_s == problem[1]
  end

  # my_each should be on every test, so if the category is enumerable we add
  # it in here, delete it, and then lower will add a random problem from 
  # remaining enumerables
  if category == :enumerable 
    my_each = problems_in_category.find { |el| el[0] == 'my_each' }
    master << my_each
    problems_in_category.delete(my_each)
  end

  if category == :string
    pig_latinify = problems_in_category.find { |el| el[0] == 'pig_latinify' }
    problems_in_category.delete(pig_latinify)
  end

  master.concat(problems_in_category.sample(num))
end

# Remove old practice assessment if it exists
FileUtils.rm_r("practice_assessment") if File.directory?("practice_assessment")

# Create relevant directories for practice assessment
Dir.mkdir("practice_assessment")
Dir.mkdir("practice_assessment/lib")
Dir.mkdir("practice_assessment/spec")
Dir.mkdir("practice_assessment/solution")

# Create new problem, spec and solution files
practice_test = File.open("practice_assessment/lib/practice_test.rb", "w")
spec = File.open("practice_assessment/spec/practice_test_spec.rb", "w")
solution = File.open("practice_assessment/solution/solution.rb", "w")
gemfile = File.open("practice_assessment/Gemfile", "w")
rspec = File.open("practice_assessment/.rspec", "w")

# Copy README into practice directory
FileUtils.cp("./resources/README.md", "./practice_assessment/")

# Require rspec and the practice_test in the spec
spec << "gem 'rspec'" << "\n"
spec << "require 'practice_test'" << "\n"

# .rspec file add formatting and color for better readability.
rspec << "--format documentation" << "\n"
rspec << "--color" << "\n"

# Add rspec, byebug, and colorize gems to Gemfile
gemfile << "source 'https://rubygems.org'" << "\n"
gemfile << "gem 'rspec'" << "\n"
gemfile << "gem 'byebug'" << "\n"
gemfile << "gem 'colorize'" << "\n"

# Loop through master problems and add text to the new files
master.each do |problem|
  practice_test << File.read(problem[2]) << "\n"
  spec << File.read(problem[3]) << "\n"
  solution << File.read(problem[4]) << "\n"
end

# Close the files that were just created
practice_test.close
spec.close
solution.close
gemfile.close

puts "Beep." 
puts "Bop."
puts "Boop." 
puts "Beep." 
puts "Done!"