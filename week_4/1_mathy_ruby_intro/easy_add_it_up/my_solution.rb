# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode
=begin

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

	1. # total is defined as a method
		-input is total, output is pass if total is a method
		-To solve this test a method must be defined with the name 'total'
	2. # total requires a single argument
		-input is total, output is pass if total takes one parameter
		-To solve this test make sure that total is taking in one argument 
	3. # total returns the correct total of array 1
		-input is total(array1), output should be 27
		-To solve this problem the total function needs to iterate through the array and add each element to a running total value, then return that value
	4. # total returns the correct total of array 2
		-input is total(array2), output should be 43
		-To solve this problem the total function needs to iterate through the array and add each element to a running total value, then return that value	
	5. # sentence_maker is defined as a method
		-input is sentence_maker, output is true if sentece_maker is a method
		-To solve this test a method must be defined with the name 'sentence_maker'
	6. # sentence_maker requires a single argument
		-input is sentence_maker, output is true if sentence_maker's arity is 1
		-To solve this test make sure sentence_maker takes just 1 parameter
	7. # sentence_maker returns the grammatically correct sentence of the first sentence
		-input is sentence_maker(first_sentence), output is true if it equals "All my socks are dirty."
		-To solve this test make sentence_maker iterate through the array and add each element to a sentence variable
	8. # sentence_maker returns the grammatically correct sentence of the second sentence
		-input is sentence_maker(second_sentence), output is true if it equals "All my socks are dirty."
		-To solve this test make sentence_maker iterate through the array and add each element to a sentence variable

=end
# 2. Initial Solution
	puts "hello world"
	var1 =  [1, 2, 3, 4, 5, 5, 7] 
	
	def total(var1)
		total = 0
		for x in var1
			total += x
		end
		return total
	end

	sentence = ["alaska", "has", "over", 586, "thousand", "miles"]
	sentence2 = ["all", "my", "socks", "are", "dirty"]

	def sentence_maker(var1)
		total = ''
		total = var1[0].capitalize + ' '
		for i in 1..(var1.length-2)
			total += var1[i].to_s + ' '
		end
		total += var1[var1.length-1].to_s+'.'
		puts total
		return total
	end
	sentence_maker(sentence2)


# 3. Refactored Solution



# 4. Reflection 