# a/A Practice Test Generator

All of the practice problems are listed and categorized in `list.csv` (categories include: recursion, sorting, enumerable, array, string). When you run `generator.rb` on the command line and provide your desired number of questions from each category, it uses your input and the CSV file to randomly select practice problems. It combines these problems and writes 3 new files inside the repo folder:

* `practice_test.rb` contains the problems to be solved

* `spec.rb` combines the specs for the chosen problems into one file for easy testing

* `solutions.rb` combines the solutions for each problem

## How to use this generator

1. Clone this repo onto your local machine.

2. Navigate to your local repo directory in terminal and run `ruby random_test_generator.rb`.

3. You will now have a new directory, `/practice_assessment/`, with three new files: `practice_test.rb`, `spec.rb` and `solutions.rb`. Run `bundle exec rspec spec.rb` to test your answers against the spec as you work through `practice_test.rb`.

4. Check your solutions against those in `solutions.rb`.

__Warning__: if you run the generator again in the same folder, it will re-write those three files and erase your previous work. If you wish to save your previous work, you will need to rename the files.