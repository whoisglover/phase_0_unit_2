# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode
=begin
	initialize:
	1. Perform check on sides to make sure greater than 1, raise error and stop if false
	2. If true set the dies sides to the Input

	Sides:
	1. No input, return the number of sides of the dice 

	Roll: 
	1. No input 
	2. Return random number between 1 and sides (use modulus)

=end
# Input:
# Output:
# Steps:


# 3. Initial Solution

class Die
  def initialize(sides)
  	raise ArgumentError.new("Sides Must Be Larger Than 1") if sides < 1
  	@sides = sides;
  end
  
  def sides
    return @sides;
  end
  
  def roll
    return rand(sides)+1
  end
end



# 4. Refactored Solution
# I don't think my code can be made any simpler.  Each method has only one line of code and my variable names are clear.
# I like using the format of error raising used on line 29 with the if statement trailing after, I think this makes the code 
# very readable.





# 1. DRIVER TESTS GO BELOW THIS LINE

my_die = Die.new(6)
puts my_die.sides == 6
puts my_die.roll

# 5. Reflection 