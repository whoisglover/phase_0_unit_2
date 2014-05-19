# U2.W6: Refactoring for Code Readability


# I worked on this challenge by myself.


# Original Solution written by Jason Scott 
# class CreditCard
#   def initialize (credit_card_number)
#     @credit_card_number = credit_card_number
#     @untouched = []
#     @doubled =[]
#   end 


 # 	this is clean code but .length is giving an error.  Looking closer the credit_card_number needs 
 # to be changed to string or array before most of this code will work 
#   def check_card 
#     if @credit_card_number.length != 16
#       raise ArgumentError.new("The credit card number must be 16 digits")
#     end
    
    #having two arrays one for double and one for not seems like extra work, should all be in one
#     @credit_card_number.each_with_index do |item, index|   
#       if index.even? 
#         @doubled.push(item)
#       else
#         @untouched.push(item)
#       end
#  end
      
      
#       @doubled.map { |item| item *2 }.join('').to_a   
# <<<< here is where i am having issues
      
#       total = (@untouched.concat(@doubled)).inject(:+)
      
#       if total % 10 == 0 
#         puts "Valid credit card number"
#       else
#         puts "Invalid credit card number"
#       end
#   end
# end



# Refactored Solution

class CreditCard
  def initialize (credit_card_number)
  	
    @credit_card_number = credit_card_number
      end  
  

  def check_card 

  	
    if @credit_card_number.to_s.length != 16
      raise ArgumentError.new("The credit card number must be 16 digits")
    end
    
    #convert to string, splitting the number, and putting into an array as a digit this replaces the need for 
    # the two original instance variables @untouched and @doubled. Doubles any that are at an even index
    newnum = @credit_card_number.to_s.split('').map { |digit| digit.to_i }	 
	 	newnum.each_index do |num|
	 		if num.even? 
	 			 newnum[num] = newnum[num] *2
	 		end
	 	end
      #hello?
      
      # This is a overly complex way of solving the problem.  It doesn't give any more power and it is less readable 
      # My way will have a few extra lines of code but I believe that trade off is worth it to improve readability.
      #I will still use two arrays but for the ability to seperate double digit numbers that were created by doubling
      # @doubled.map { |item| item *2 }.join('').to_a         
      # total = (@untouched.concat(@doubled)).inject(:+)
      
      	array = []
	 	array2 = []
	 	newnum.each do |x|
	 		 array << x.to_s.split('').map { |digit| digit.to_i }	 
	 	end
	 	array.each do |u|
	 		p u
	 		u.each do |t|
	 			p t
	 		 array2.push(t)
	 		end
	 	end
	 	array2
	 	total = 0
	 	array2.each do |x|
	 		total += x
	 	end
	 	puts total	
      if total % 10 == 0 
        puts "Valid credit card number"
        return true
      else
        puts "Invalid credit card number"
        return false
      end
  end
end




# # DRIVER TESTS GO BELOW THIS LINE

# card_1 = CreditCard.new(4563960122001999) 
# card_2 = CreditCard.new(4532679350038774)
# card_3 = CreditCard.new(4532642548902343)
# card_4 = CreditCard.new(4716142602810621)
# card_5 = CreditCard.new(4485720303618200)
test = CreditCard.new(1111222233334444)
# puts card_1.check_card == true 
# puts card_2.check_card == true
# p card_3.check_card == true 
# p card_4.check_card == true 
# p card_5.check_card == true 
def check_card_assertion 
  raise "Credit Card Not Valid!" unless yield 
end  

check_card_assertion {test.check_card}
#check_card_assertion {card_2.check_card}
#check_card_assertion {card_3.check_card}
#check_card_assertion {card_4.check_card}


#test = CreditCard.new(1121222233334444)

 test.check_card



# Reflection 
What parts of your strategy worked? What problems did you face?
I think I grabbed a very early implementation from Scott's solution because most of it wasn't working at all.  This led me to the 
problem of rewriting large parts of the code instead of just cleaning it up.
What questions did you have while coding? What resources did you find to help you answer them?
I didn't have many questions on this one.  I forgot that assert statements need whatever is inside them to either return true or false
so I had to add that to the if/else in check_card.
What concepts are you having trouble with, or did you just figure something out? If so, what?
I'm not having trouble with any of the concepts in this challenge.  Refactoring seems straight forward and enjoyable.
Did you learn any new skills or tricks?
I did not learn anything really new in this challenge.
How confident are you with each of the Learning Competencies?
I feel very confident with each of the Learning Competencies.  I think pairing with people at DBC will really help improve my refactoring skills as well.
Which parts of the challenge did you enjoy?
I'm starting to very much enjoy the testing section of these challenges.  It feels good to fail tests, work on the code, and then get the test to pass.
Which parts of the challenge did you find tedious?
I didn't find anything here too tedious. 