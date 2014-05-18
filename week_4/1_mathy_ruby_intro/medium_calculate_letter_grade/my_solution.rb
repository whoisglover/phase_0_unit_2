# U2.W4: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?
=begin 

	Failed Tests and Pseudocode:

	1.  # get_grade is defined as a method
	get_grade needs to be defined as a method that takes in 1 parameter (according to directions this will be an array of scores)

	2. rspec ./letter_grade_spec.rb:13 # get_grade returns "A" when the average is >= 90
	3. rspec ./letter_grade_spec.rb:16 # get_grade returns "B" when the average is >= 80
	4. rspec ./letter_grade_spec.rb:19 # get_grade returns "C" when the average is >= 70
	5. rspec ./letter_grade_spec.rb:22 # get_grade returns "D" when the average is >= 60
	6. rspec ./letter_grade_spec.rb:25 # get_grade returns "F" when the average is < 60

	get_grades needs to find the average of all the scores in the array and return the appropriate grade based on this average
	Each grade and corresponding score can be seen in the above failed test cases
	Once a working solution is created error checking should be added to only accept scores between 0-100
=end
# 2. Initial Solution
	array = [-100, 0, 50]
	
	def get_grade(scores)
			total =0
			scores.each do |x|
				total += x
			end
			average = total/scores.length
			puts average
			case average
				when 90..100 
					 return 'A'
				when 80..89
					return 'B'
				when 70..79
					return 'C'
				when 60..69
					return 'D'
				when 0..69
					return 'F'
				else
					return 'Invalid Grade. Average is: '+ average.to_s
			end
	end

	
# 3. Refactored Solution
#In refactored solution I will add error checking to break out of the method if any of the scores are not in the acceptable range 0-100

def get_grade(scores)
			total =0
			scores.each do |x|
				if x <= 100 and x >= 0
					total += x
				else
					return 'Invalid score found in scores array: '+ x.to_s
				end
			end
			average = total/scores.length
			puts average
			case average
				when 90..100 
					 return 'A'
				when 80..89
					return 'B'
				when 70..79
					return 'C'
				when 60..69
					return 'D'
				when 0..69
					return 'F'
				else
					return 'Invalid Grade. Average is: '+ average.to_s
			end
	end
	
# 4. Reflection 
=begin 
What parts of your strategy worked? What problems did you face?
	-Using the built in .each method worked perfectly here for computing the average of the array.  I Also
	really liked using the switch-case set up, I feel like it kept the code quite clean and D.R.Y.
What questions did you have while coding? What resources did you find to help you answer them?
	- I was running into syntax errors with my case statement.  I thought I had to use the variables name  on 
		each when clause.  A quick google search showed me the way.
What concepts are you having trouble with, or did you just figure something out? If so, what?
	-I now feel I have a much better grasp on the case statement in ruby and feel confident using it.
Did you learn any new skills or tricks?
	-Nothing completely new but like I said I now feel better with the case statement.
How confident are you with each of the Learning Competencies?
	- I am very confident with the learning Competencies.  I think I am understanding this unit's material pretty well.
Which parts of the challenge did you enjoy?
	- So far I have enjoyed the set up of these challenges. Specifically I like using rspec first and then developing my 
	pseudo code from that.  It always feels good at the end to run the rspec and have 0 failures.
Which parts of the challenge did you find tedious?
	- I found debugging the case statement a little tedious but that was my own fault for setting it up wrong.
=end