# U2.W5: Build a simple guessing game SOLO CHALLENGE
##
# I worked on this challenge [by myself].

# 2. Pseudocode
=begin
	Initialize:
		1. Check that input is an integer, set instance variable equal to answer
		2. Create instance variable holding last guess for solved start with nil 
	Guess:
		1. Take integer as input, raise warning if not integer
		1.5 Set last guess instance variable equal to this current guess
		2. Check against answer, if equal return correct, if guess is larger return high, if guess is smaller 
			return low.
	Solved?:
		1. Need instance variable for holding last guess, if it is equal to answer then return true otherwise return false
=end
# 3. Initial Solution

class GuessingGame
  def initialize(answer)
  	raise ArgumentError.new("Answer Must be an Integer") if !answer.is_a?(Integer)
  	@answer = answer
  	@last_guess = nil
    # Your initialization code goes here
  end
  
  def guess(guess)
  	raise ArgumentError.new("Guess Must be an Integer") if !guess.is_a?(Integer)
  	@last_guess = guess
  	if guess > @answer
  		return "High"
  	elsif guess < @answer
  		return "Low"
  	else
  		return "Correct"
  	end
  end

  def solved?
  		if @last_guess == @answer
  			return true 
  		else return false
  		end
  end
  # Make sure you define the other required methods, too
end




# 4. Refactored Solution

# I want to refactor solved? to utiliaze a instance variable that is a boolean flag, that way if the game is solved a 
# new guess doesn't change the status of solved

class GuessingGame
  def initialize(answer)
  	raise ArgumentError.new("Answer Must be an Integer") if !answer.is_a?(Integer)
  	@answer = answer
  	@last_guess = nil
  	@solved = false
    # Your initialization code goes here
  end
  
  def guess(guess)

  	if @solved 
  		return "This guessing game has already been solved."
  	end

  	raise ArgumentError.new("Guess Must be an Integer") if !guess.is_a?(Integer)
  	@last_guess = guess
  	if guess > @answer
  		return :high
  	elsif guess < @answer
  		return :low
  	else
  		@solved = true
  		return :correct
  	end
  end

  def solved?
  		return @solved
  end
  # Make sure you define the other required methods, too
end


# 1. DRIVER TESTS GO BELOW THIS LINE


#new_game = GuessingGame.new('a')
new_game = GuessingGame.new(5)
p new_game.guess(13) == :high
p new_game.guess(3) == :low
p new_game.solved? == false
p new_game.guess(5) == :correct
p new_game.solved? == true
p new_game.guess(4)



# 5. Reflection 
