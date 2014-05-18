# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself ].

# 1. Pseudocode
=begin
# What is the input? 
	-Input is an array (method called on array)
# What is the output? (i.e. What should the code return?) 
	-Code should return a padded array, either new array or original modified depending on pad or pad!
# What are the steps needed to solve the problem?

	1. Define a new method in class Array
	2. New method has the new size of the array, and optional value to put in the new spots (default is nil)
	3. As long as the array isn't the size of the new desired size, add to the back of the array
	4. If the new_size is 0 give back the original array right away
	5. If using pad! just add on to existing array
	6. If using pad don't change the original array, instead return a new array with correct size and elements
=end

# 2. Initial Solution

class Array 
def pad(new_size, new_value=nil)
	if(self.length >= new_size)
		return self
	end
	newt = []
	newt += self
	while newt.length < new_size
		newt << new_value
	end	
	return newt
end

def pad!(new_size, new_value=nil)
	if(self.length >= new_size)
		return self
	end
	while self.length < new_size
		self << new_value
	end
	return self
end

end

# p array = ['a', 'b', 'c']
# p array.pad(5, 'apple')
# p array.pad(0)
# p array.pad!(5)
# p array

# 3. Refactored Solution
#Forgot to add check for if 0 is entered.  Added If statement at the start

class Array 
def pad(new_size, new_value=nil)
	# if(new_size == 0)
	# 	return self
	# end
	#testing out || OR syntax for If statement
	if self.length >= new_size || new_size == 0
		return self
	end
	newt = []
	newt += self
	while newt.length < new_size
		newt << new_value
	end	
	return newt
end

def pad!(new_size, new_value=nil)
	if(new_size == 0)
		return self
	end
	if(self.length >= new_size)
		return self
	end
	while self.length < new_size
		self << new_value
	end
	return self
end

end


p array = ['a', 'b', 'c']
p array.pad(5, 'apple')
p array.pad(0)
p array.pad!(5)
p array

# 4. Reflection 
=begin
What parts of your strategy worked? What problems did you face?
	-Using the while loop with the length worked well.  At first I had trouble accessing the array itself but a little research reminded me to
	access it with self.
What questions did you have while coding? What resources did you find to help you answer them?
	-I wasn't sure how to default the second input parameter to nil but again stack overflow came to the rescue.
What concepts are you having trouble with, or did you just figure something out? If so, what?
	- I figured out the nil issue I described in the last question.  I also finally tested out and learned how to use || with if statements.  I have
	used the OR syntax with other languages but hadn't taken the time to see how it worked in Ruby.  I will be using this much more often now.
	-I am having trouble passing the rspec testing.  Everything passes except pad working non-destructively.  I don't know what the issue is because
	my own print testing shows that it isn't changing the values in the original array.
Did you learn any new skills or tricks?
	-I learned the OR operator for If statements as well as setting input parameters equal to default values.
How confident are you with each of the Learning Competencies?
	- I feel fairly confident with the Learning Competencies.  Not fully passing the rspec is making me feel a little less confident.
Which parts of the challenge did you enjoy?
	- I enjoyed creating new methods in established classes.  Although I had touched on it in a previous tutorial I now feel like I actually have a solid
	grasp on how it works.  It seems really convenient for building your own functionality.
Which parts of the challenge did you find tedious?
	- I didn't find anything very tedious this challenge.
=end