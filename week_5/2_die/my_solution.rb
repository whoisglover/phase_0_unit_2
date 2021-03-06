# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode
=begin
initialize:
	1. Perform check on size of input array to make sure greater than 1, raise error and stop if false
	2. If true set the dies labels variable to the Input

	Sides:
	1. No input, return the number of size of the labels variable

	Roll: 
	1. No input 
	2. Calculate random number between 1 and sides (use modulus)
	3. Use this random number as index of labels array to return

=end
# 3. Initial Solution

class Die
  def initialize(labels)
  	raise ArgumentError.new("Input Array Cannot Be Empty") if labels.size < 1
  	@labels = labels
  	 
  end
  def sides
  	return @labels.size
  end
  def roll
  	random = rand(sides)+1
  	return @labels[random]
  end
end



# 4. Refactored Solution
#EDIT: Roll doesn't need +1 because I need the index which should be between 0 and size of labels,
#	also this can all be done on one line.  The expression for random number just goes where the index is.


class Die
  def initialize(labels)
  	raise ArgumentError.new("Input Array Cannot Be Empty") if labels.size < 1
  	@labels = labels
  	 
  end
  def sides
  	return @labels.size
  end
  def roll
  	return @labels[rand(sides)]
  end
end


# 1. DRIVER TESTS GO BELOW THIS LINE

my_die = Die.new(['b', 'a'])
puts my_die.sides == 2
puts my_die.roll


# 5. Reflection 
=begin
What parts of your strategy worked? What problems did you face?
	- Using .size worked well for returning the sides and using the indexing of the input also worked well
What questions did you have while coding? What resources did you find to help you answer them?
	- No questions while coding this, just used strategy of printing often to make sure things are working how I thought they should
What concepts are you having trouble with, or did you just figure something out? If so, what?
	- The only thing that gave me trouble was roll not starting at 1 since it is an index once I figured that out I was good to go
Did you learn any new skills or tricks?
	- No new skills or tricks this time
How confident are you with each of the Learning Competencies?
	- I feel very confident with the Learning Competencies so far. I enjoy working with classes in Ruby
Which parts of the challenge did you enjoy?
	- I enjoyed figuring out how to implement the roll feature using the index provided by random
Which parts of the challenge did you find tedious?
	- I didn't find any parts of this challenge tedious
=end