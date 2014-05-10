# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself .
# person1: Bridgette Salcido
# person2: Danny Glover 


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
#assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs

# 1. We'll create a method (can be named anything, example: #check_card_verify) and 
# 2. The method will contain a custom error message following the keyword "raise" 
# 3. If the tests present in the {} do not evaluate to true (or if nothing is inside of the {}) the error message will be returned
# 4. If the tests present in the {} do evaluate to true, nothing is done
# 5. The assert method above returns an error message unless all tests evaluate to true
# 6. name != "billybob" so, the "assertion failed!" message is returned 



# The assert method is testing to see if the test is true. If the test is 
# true, nothing will happen. If the test is false, it will raise a fail 
# message. A fail message results from the code above because name does not 
# equal "billybob"


# 3. Copy your selected challenge here
class CreditCard
  def initialize(credit_card_number) 
    raise ArgumentError.new("Invalid Credit Card Number.") if credit_card_number.to_s.length != 16
    @credit_card_number = credit_card_number.to_s.split("")
  end
  

  def check_card
    verifiable_card_num = []
  
    @credit_card_number.each_with_index { |item,index| 
      if index % 2 != 0
        verifiable_card_num << item.to_i
      elsif index % 2 == 0 
        verifiable_card_num << (item.to_i * 2) 
      end }
 
    check_card_num = verifiable_card_num.to_s.split("")
  
    check_card_num.map!{|x| x.to_i}.inject(:+)
 
    return true if check_card_num.reduce(:+) % 10 == 0 
    return false if check_card_num.reduce(:+) % 10 !=0
  end  
end


# 4. Convert your driver test code from that challenge into Assert Statements
=begin 
4532679350038774
4532642548902343
4066525324850113
4716142602810621
4485720303618200
=end

card_1 = CreditCard.new(4563960122001999) 
card_2 = CreditCard.new(4532679350038774)
card_3 = CreditCard.new(4532642548902343)
card_4 = CreditCard.new(4716142602810621)
card_5 = CreditCard.new(4485720303618200)

puts card_1.check_card == true 
puts card_2.check_card == true
p card_3.check_card == true 
p card_4.check_card == true 
p card_5.check_card == true 
def check_card_assertion 
  raise "Credit Card Not Valid!" unless yield 
end  

check_card_assertion {card_1.check_card}
check_card_assertion {card_2.check_card}
check_card_assertion {card_3.check_card}
check_card_assertion {card_4.check_card}
check_card_assertion {}


# 5. Reflection

