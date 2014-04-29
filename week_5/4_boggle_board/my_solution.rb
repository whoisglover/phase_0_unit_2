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