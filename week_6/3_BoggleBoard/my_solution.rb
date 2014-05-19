# U2.W6: Create a BoggleBoard Class


# I worked on this challenge by myself.


# 2. Pseudocode
=begin
1. Create in itialize method that sets a 2D array that is passed in.
Create the create_word method.  This will be the same as last week but instead of being an indpendent mthod it will be inside the 
class and thus will not need the board passed to it.
2. Create get_row method that returns the entire row of the boggle board.  This will be similar implementation to last week's
code except the method will now take the desired row number instead of the initializer. 
3. Create get_column method inside the class. Again this can be very similar to last week's implementation.
4. Create get letter method that will get a single letter from coordinates being passed.  This will be very similar to create word
5. Create driver tests to make sure everything is working as it should be. 
=end

# 3. Initial Solution
class BoggleBoard
 

    def initialize(dice_grid)
        @boggle_board = dice_grid
    end
    
    def get_row(row)
        return @boggle_board[row]
    end


    def get_column(column)
        new_array = []
        @boggle_board.each do |row|
        
            new_array.push(row[column])
        end

        return new_array
    end
 	def create_word( *coords)
   		 coords.map { |coord| @boggle_board[coord.first][coord.last]}.join("")
	end

	def get_letter( *coords)
   		 coords.map { |coord| @boggle_board[coord.first][coord.last]}.join("")
	end
end
 
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)
 


# 4. Refactored Solution
# I refactored to include printing the four letters as a word when I use get row or get column, this required adding a .each loop on the row 

class BoggleBoard
 

    def initialize(dice_grid)
        @boggle_board = dice_grid
    end
    
    def get_row(row)
    	@boggle_board[row].each do |x|
    		print x 
    	end
    	puts 
    	return @boggle_board[row]

    end


    def get_column(column)
        new_array = []
        @boggle_board.each do |row|
        	print row[column]
            new_array.push(row[column])
        end
        puts
        return new_array
    end
 	def create_word( *coords)
   		 coords.map { |coord| @boggle_board[coord.first][coord.last]}.join("")
	end

	def get_letter( *coords)
   		 coords.map { |coord| @boggle_board[coord.first][coord.last]}.join("")
	end
end
 
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)




# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:
# implement tests for each of the methods here:

boggle_board.get_column(0) 
boggle_board.get_column(1) 
boggle_board.get_column(2) 
boggle_board.get_column(3) 

boggle_board.get_row(0) 
boggle_board.get_row(1) 
boggle_board.get_row(2) 
boggle_board.get_row(3) 
p boggle_board.create_word([2,1], [1,1], [1,2], [0,3]) == "code"
p boggle_board.get_row(1) == ["i", "o", "d", "t"]
p boggle_board.get_letter([3,2]) == 'k'


# 5. Reflection 
You just made a transition from procedural programming to object-oriented programming! 
How is the implementation different? What are the benefits to using the Object Oriented approach 
(even if it is a bit more code?)
- Creating classes of objects that can be instantiated on the fly is the biggest difference I've noticed so far.
The benefits are that with objects you can have all the same functionalities with methods but totally different
instance variables.  Instance variables are the variables that are unique to a certain object.  For intance if you have
a car class.  One car might be instantiated with it's paint_color instance variable set to red and another car would 
be instnatiated with its set to blue.
Creating seperate objects like this helps us to reuse code and create more complex systems.  Another big thing I've learned so far
is the conecpt of inheretiance vs encapsulation (or more simply the 'is a' vs 'has a' relationship between objects).  This lets us further reuse
code by creating base objects and then customizing them with inherant objects. I have some experience in Java and I am feeling
good about OOP in Ruby so far.  I have had a few questions while working on the class methods specifically the get_letter but 
ruby-docs and my work from last week helped clear things up.