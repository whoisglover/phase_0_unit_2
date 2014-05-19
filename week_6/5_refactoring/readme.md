[Week 6 Home](../)

# U2.W6: Refactoring for Code Readability


## Learning Competencies
- Explain what code is doing
- Refactor for clarity and readability

## Summary
Using the goals below, choose a challenge solution from [Class Warfare, Validate a Credit Card Number](../../week_5/6_validate_credit_card). This can be anyone's solution, but if you notice there's a lot of room for improvement with your own code, start with that. Find other's solutions by browsing the branches (just like you would to comment on a random person's solution).

Paste the original unrefactored code in your gist, and as you refactor, make notes of the changes you are making to achieve optimal readability. Include those notes along with the refactored version in your [my_solution.rb](my_solution.rb) file.
Original Solution:
#   class Integer
#     def digits
#       Enumerator.new do |x|
#         to_s.chars.map{|c| x << c.to_i }
#       end
#     end
#   end

# class CreditCard

#   attr_accessor :credit_card_number, :original
#     def initialize (credit_card_number)
#         @original = []
#         @credit_card_number = credit_card_number.to_s
#         @credit_card_number.map {|num| @original << num }
#         :original
#     end
#   end


#          = @credit_card_number.to_s
#         @credit_card_number.split(//)   
   
#         unless @credit_card_number != 16 raise ArgumentError.new("The credit card number must be 16 digits") 

#         else
#         @unmodified = []
#         @modfied = []
#         @modified_final = []

#       end 
#       end
    

#     def check_card
#         @credit_card_number.each_with_index do |item, index| 
#            if index % 2 == 0
#            item = item * 2
#            @modfied.push(item)
#            else
#            @unmodified.push(item)
#            end

         
           

#        @modified_final = @modified.join('').split(//)
#        @modified_final.map { |string_val| string_val.to_i }
#     	 @total = (@unmodified.concat(@modified_final).inject(:+)

   
            
#         end
#        end
#      end
#    end

#### Goals of Readable Code
- Eliminate repetition by using looping and branching wisely
- Complex operations are decomposed into constituent parts
- Descriptive names for methods, variables, classes, and modules
- Methods are small and behavior is obvious
- Minimizes need for comments because the code tells you what it is doing
- Code is formatted with proper indentation for optimal readability

## Release 0: Write [assert](../../1_assert_statements) statements
Take the driver code and turn it into assert statments with valid and invalid card numbers.

## Release 1: [Pseudocode](https://github.com/Devbootcamp/phase_0_handbook/blob/master/coding_references/pseudocode.md)

## Release 2: Comment the code 
Comment each chunk of code in the original solution

## Release 3: [Refactor](https://github.com/Devbootcamp/phase_0_handbook/blob/master/coding_references/refactoring.md) the solution for readability

## Release 4: [Reflect](https://github.com/Devbootcamp/phase_0_handbook/blob/master/coding_references/reflection_guidelines.md)

## Release 5: Push your solution to Github

## Release 6: [Review](https://github.com/Devbootcamp/phase_0_handbook/blob/master/coding_references/review.md)
Write feedback for at least two other solutions!