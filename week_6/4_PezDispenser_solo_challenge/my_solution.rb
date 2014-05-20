# U2.W6: PezDispenser Class from User Stories


# I worked on this challenge by myself. 

# 1. Review the following user stories:
# - As a pez user, I'd like to be able to "create" a new pez dispenser with a group of flavors that 
#      represent pez so it's easy to start with a full pez dispenser.
# - As a pez user, I'd like to be able to easily count the number of pez remaining in a dispenser 
#      so I can know how many are left.
# - As a pez user, I'd like to be able to take a pez from the dispenser so I can eat it.
# - As a pez user, I'd like to be able to add a pez to the dispenser so I can save a flavor for later.
# - As a pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order 
#      of the flavors coming up.


# 2. Pseudocode
=begin
1. PezDispenser will have an initialize method that takes in the flavors in the dispenser, I want to use a hash 
to store the amounts of each flavor with the flavor being the key and number remaning being the value.  Initiialize will handle
filling the hash with 5 of each flavor.
2. Instance variable of total pez will be held 
3. See all pez method with display the hash of flavors and amounts
4. Add method will check if the flavor exists already, if true it will increment the amount by one.  If not it will create a new key value pair
in the hash with value of one (adding single pez at a time)
=end

# 3. Initial Solution

class PezDispenser
 	
	def initialize(flavors)
		@pez_hash = Hash.new()
		@total = 0
		flavors.each do |flavor|
			@pez_hash[flavor.to_s] = 5
			@total += 5
		end
		puts @pez_hash
		puts "A new pez dispenser has been created. You have #{@total} pez!"  
	end 
	# your code here!

	def pez_count
		# puts @total 
		return @total
	end

	def take_pez(flavor)
		if @pez_hash.include?(flavor) 
			if @pez_hash[flavor] >= 1
				@pez_hash[flavor] = @pez_hash[flavor] - 1
				puts "You took a #{flavor} pez and there are now #{@pez_hash[flavor]} left."
			else
				puts "No more #{flavor} pez left"
			end
		else
			puts "That flavor is not in your dispenser"
		end

		#puts @pez_hash
	end

	def add_pez(flavor)
		if @pez_hash.include?(flavor) 
			@pez_hash[flavor] = @pez_hash[flavor] + 1
		else
			@pez_hash[flavor] = 1
		end
		puts "Mmm you added a #{flavor} pez."
	end
 
	def see_all_pez
		@pez_hash.each {|key, value| puts "#{key} pez: #{value}" }

	end
end
 


# 4. Refactored Solution
class PezDispenser
 	
	def initialize(flavors)
		@pez_hash = Hash.new()
		@total = 0
		flavors.each do |flavor|
			@pez_hash[flavor.to_s] = 5
			@total += 5
		end
		puts @pez_hash
		puts "A new pez dispenser has been created. You have #{@total} pez!"  
	end 
	# your code here!

	def pez_count
		# puts @total 
		if @total > 0
			return @total
		else
			return false
		end
	end

	def take_pez(flavor)
		if @pez_hash.include?(flavor) 
			if @pez_hash[flavor] >= 1
				@pez_hash[flavor] = @pez_hash[flavor] - 1
				@total -= 1
				puts "You took a #{flavor} pez and there are now #{@pez_hash[flavor]} left."
				return true
			else
				puts "No more #{flavor} pez left"
				return false
			end
		else
			puts "That flavor is not in your dispenser"
			return false
		end

		#puts @pez_hash
	end

	def add_pez(flavor)
		if @pez_hash.include?(flavor) 
			@pez_hash[flavor] = @pez_hash[flavor] + 1
		else
			@pez_hash[flavor] = 1
		end
		puts "Mmm you added a #{flavor} pez."
	end
 
	def see_all_pez
		@pez_hash.each {|key, value| puts "#{key} pez: #{value}" }
		
	end
end



#puts @pez_hash.to_a[1]

# 1. DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)

super_mario.take_pez('cola')
super_mario.take_pez('cola')
super_mario.add_pez('danny')
super_mario.add_pez('danny')
super_mario.add_pez('danny')
super_mario.see_all_pez

def check_take_assertion 
  raise "Grabbing pez failed - none of that flavor in dispenser" unless yield 
end  
def check_total_assertion 
  raise "Pez_count failed - no pez in dispenser" unless yield 
end  
check_take_assertion{super_mario.take_pez('cola')}
check_total_assertion{super_mario.pez_count}

#
# puts "Here's a look inside the dispenser:"  
# puts super_mario.see_all_pez 
# puts "Adding a purple pez."
# super_mario.add_pez("purple")   # mmmmm, purple flavor
# puts "Now you have #{super_mario.pez_count} pez!"
# puts "Oh, you want one do you?"
# puts "The pez flavor you got is: #{super_mario.get_pez}"
# puts "Now you have #{super_mario.pez_count} pez!"




# 5. Reflection 
=begin
What parts of your strategy worked? What problems did you face?
-A hash seemed to be a good data structure to use since I can save the flavor along with the amount in a key value pair.
-My Pseudocode made it easy to remember what each functionality needed to do once I started coding.  The user stories helped with this as well.
What questions did you have while coding? What resources did you find to help you answer them?
- I had quite a few questions about using a hash (things like how to add to a hash or increment existing values).  Ruby-docs.org
helped greatly with clarifying the built in hash methods available. 
What concepts are you having trouble with, or did you just figure something out? If so, what? Did you learn any new skills or tricks?
- I really feel like I understand hashes better after completing this challenge.  Also the %w on line 145 was also a new trick I learned.
How confident are you with each of the Learning Competencies?
- I feel pretty confident with the Learning Competencies, but I need to work on my assert statements more.
Which parts of the challenge did you enjoy?
-I enjoyed coming up with the logic for my methods, it was challenging but rewarding once I figured it out.
Which parts of the challenge did you find tedious?
- I found the assert methods a bit tedious and slightly unnecessary. 
=end