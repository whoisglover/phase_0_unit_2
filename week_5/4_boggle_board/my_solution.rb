# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge with: Danny Glover Amol Borcar

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode

# Initial Solution

def create_word(board, *coords)
    coords.map { |coord| board[coord.first][coord.last]}.join("")
end

# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE


# Reflection 

#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode

# Create new method that requires one argument
    # Create blank array
    # Loop through row and add each element to blank array
    # Return newly filled array
# End method

# Initial Solution

class Boggle
    def initialize(row)
        @row = row
        @boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]
    end
    

    def get_row
        return @boggle_board[@row]
    end

end

# Refactored Solution

# Come back to this later


# DRIVER TESTS GO BELOW THIS LINE

Row_check.new(0).get_row == ["b","r","a","e"]

# Reflection 


#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode
    # 1. Create boggle class
    # 2. Create initialize method that takes in one argument 
    # 3. Create get_column method 
    # 4. In get_column create a new array
    # 5. Loop through every row in the array, push element in position of the argument to the new array


# Initial Solution

class Boggle
    def initialize(column)
        @column = column
        @boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]
    end
    
    def get_column
        new_array = []
        @boggle_board.each do |row|
            new_array.push(row[@column])
        end
        return new_array
    end
end


# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE
Boggle.new(1).get_column ==  ["r", "o", "c", "a"] 

# Reflection 

What parts of your strategy worked? What problems did you face?
    - Amol and I were a little confused as to how to pass the boggle board in to the class/where the boggle board should live
    eventually we just decided to hard code it into the initialize
What questions did you have while coding? What resources did you find to help you answer them?
    - We didn't have many questions while working on this challenge, when we weren't sure exactly what was happening we used irb or printing to get a more clear picture
What concepts are you having trouble with, or did you just figure something out? If so, what?
    -Again we didn't have any trouble making this program do exactly what we wanted it to.  We didn't figure anything new out but solidified our understanding of classes
Did you learn any new skills or tricks?
    -No we didnt learn any new skills or tricks 
How confident are you with each of the Learning Competencies?
    -Amol and I both felt very confident after finishing this challenge.  We worked well together and were able to quickly and efficiently complete this challenge
Which parts of the challenge did you enjoy?
    - I enjoyed the boggle board being like a 2 dimensional matrix it refreshed my memory from earlier algorithm classes
Which parts of the challenge did you find tedious?
    - I didn't find any part of this challenge tedious 