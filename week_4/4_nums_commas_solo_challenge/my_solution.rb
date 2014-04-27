# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input? Input is a single integer
# What is the output? (i.e. What should the code return?) Output should be correct number displayed with commas
# What are the steps needed to solve the problem?
=begin
	1. Determine which size bracket the number falls into to know how many commas to add
	2. Change integer to string
	3. Add commas and print string
=end

# 2. Initial Solution

def seperate_comma(num)
	case num
	when 0..999
		puts num
	when 1000..9999
		string = num.to_s
		puts string[0] +","+string[1..3]
	when 10000..99999
		string = num.to_s
		puts string[0..1] +","+string[2..4]
	when 100000..999999
		string = num.to_s
		puts string[0..2] +","+string[3..5]
	when 1000000..9999999
		string = num.to_s
		puts string[0]+","+string[1..3]+","+string[4..6]
	when 10000000..99999999
		string = num.to_s
		puts string[0..1]+","+string[2..4]+","+string[5..7]
	when 100000000..999999999
		string = num.to_s
		var = string[0..2]+","+string[3..5]+","+string[6..8]	
		return var.to_s
	end
end

#DRIVER TESTING
puts "seperate_comma(123) == '123'"
puts seperate_comma(123) == '123'
puts "seperate_comma(1234) == '1,234'"
puts seperate_comma(1234) == '1,234'
puts "seperate_comma(12345) == '12,345'"
puts seperate_comma(12345) == '12,345'
puts "seperate_comma(123456) == '123,456'"
puts seperate_comma(123456) == '123,456'
puts "seperate_comma(1234567) == '1,234,567'"
puts seperate_comma(1234567) == '1,234,567'
puts "seperate_comma(12345678) == '12,345,678'"
puts seperate_comma(12345678) == '12,345,678'
puts "seperate_comma(123456789) == '123,456,789'"
puts seperate_comma(123456789) == '123,456,789'

# 3. Refactored Solution
#After creating my initial soultion I found the .insert method for strings.  I will now try to use this to insert the commas in the correct place
# I also realized to be able to test with == I need to be return the string not outputting it. 
puts
puts "Refactored Solution:"
puts

def seperate_comma(num)
	case num
	when 0..999
		return num.to_s
	when 1000..9999
		string = num.to_s
		string.insert(1, ',')
		return string
	when 10000..99999
		string = num.to_s
		string.insert(2, ',')
		return string
	when 100000..999999
		string = num.to_s
		string.insert(3, ',')
		return string
	when 1000000..9999999
		string = num.to_s
		string.insert(1, ',')
		string.insert(5, ',')
		return string
	when 10000000..99999999
		string = num.to_s
		string.insert(2, ',')
		string.insert(6, ',')
		return string
	when 100000000..999999999
		string = num.to_s
		string.insert(3, ',')
		string.insert(7, ',')
		return string
	end
end


#DRIVER TESTING
puts "seperate_comma(123) == '123'"
puts seperate_comma(123) == '123'
puts "seperate_comma(1234) == '1,234'"
puts seperate_comma(1234) == '1,234'
puts "seperate_comma(12345) == '12,345'"
puts seperate_comma(12345) == '12,345'
puts "seperate_comma(123456) == '123,456'"
puts seperate_comma(123456) == '123,456'
puts "seperate_comma(1234567) == '1,234,567'"
puts seperate_comma(1234567) == '1,234,567'
puts "seperate_comma(12345678) == '12,345,678'"
puts seperate_comma(12345678) == '12,345,678'
puts "seperate_comma(123456789) == '123,456,789'"
puts seperate_comma(123456789) == '123,456,789'


# 4. Reflection 
=begin
What parts of your strategy worked? What problems did you face?
	-Changing the integer to a string worked well and seemed to be the right way to go.  While using the + operator to add the commas worked, it just didn't
	feel like the most efficient.  It became quite tedious to do multiple + statements.
What questions did you have while coding? What resources did you find to help you answer them?
	-I researched adding things to strings and in the ruby docs found the insert method.  This seemed perfect and really cleaned up my code.  I was also very confused
	as to why I was outputting the correct string but my equality tests were still failing.  Tinkering with code made me realize I just needed to be returning the string instead of simply printing it.
What concepts are you having trouble with, or did you just figure something out? If so, what?
	-The rpsec file is still not passing.  My home made driver tests are however.  I'm not sure why this is, but looking at the regex my guess is that it expects the numbers to stay as ints and the comma to be in between.
	I'm not sure how to accomplish this without using regular expressions in my solution.  I am happy with my solution though since it is passing the driver tests I created.
Did you learn any new skills or tricks?
	- I learned how to properly use the .insert method on strings.  Very handy!
How confident are you with each of the Learning Competencies?
	- I am very confident with the Learning Competencies.
Which parts of the challenge did you enjoy?
	- I enjoyed the logic being a little bit tougher than previous challenges.
Which parts of the challenge did you find tedious?
	- The repetition of creating each case as the number grew by one place was slightly tedious.  This may have been avoided by finding a better way to tackle the solution or by using regular expressions. 