# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: 16 digit number
# Output:
# Steps:
=begin
1. Split the number apart into seperate digits
2. Double every other number down to first index from second to last 
3. Split all the numbers agian into single digits
4. Add all the numbers
5. Check if the total is divisible by 10, if so return true else return false
=end

# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
class CreditCard
	def initialize(card_num)
		@card_num = card_num   

    end

	def double_up
	 	newnum = @card_num.to_s.split('').map { |digit| digit.to_i }	 
	 	newnum.each_index do |num|
	 		if num.even? 
	 			 newnum[num] = newnum[num] *2
	 		end
	 	end
	 	#newnum = @card_num.to_s.split('').map { |digit| digit.to_i }	 
	 	array = []
	 	array2 = []
	 	newnum.each do |x|
	 		 array << x.to_s.split('').map { |digit| digit.to_i }	 
	 	end
	 	array.each do |u|
	 		u.each do |t|
	 		 array2.push(t)
	 		end
	 	end
	 	array2
	 	total = 0
	 	array2.each do |x|
	 		total += x
	 	end

	 	if total % 10 == 0
	 		return true
	 	else
	 		return false
	 	end
	 	
	end

	def check_card
		
	end
	
end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

card = CreditCard.new(4563960122001999)
card.double_up == true




# 5. Reflection 
=begin 
What parts of your strategy worked? What problems did you face?
	- Using split and map seemed to work well for spliting the integers into seperate digits
	- I faced the problem of scope, I ended up coding the entire process in a single method to make this easier
What questions did you have while coding? What resources did you find to help you answer them?
	- Like I mentioned before I got caught up with the coding and didnt do a very good job of seperating the pieces.  I plan on taking care of that by refactoring when I have some free time in the coming days
What concepts are you having trouble with, or did you just figure something out? If so, what?
	- Not having trouble with any large concepts, the split and mapping gave me a little bit of trouble but I figured out how to manipulate it by using lots of printing to debug
Did you learn any new skills or tricks?
	- I became much more comfortable with the method of converting a number to a string, splitting, and then converting back to int
How confident are you with each of the Learning Competencies?
	- I feel confident with the Learning Competencies but I need to work on breaking my code up more
Which parts of the challenge did you enjoy?
	- The complexity of the challenge was enjoyable.  I was working under a bit of pressure to get this done by Sunday so I think I would have enjoyed it even more if I had more time 
Which parts of the challenge did you find tedious?
	- I had a some issues splitting the digits after doubling them that was slightly tedious but nothing too bad

=end